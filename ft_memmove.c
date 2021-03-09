/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: egrazina <egrazina@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/17 15:40:02 by egrazina          #+#    #+#             */
/*   Updated: 2021/03/09 10:34:10 by egrazina         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t n)
{
	void *ret;

	if (!dst && !src)
		return (0);
	ret = dst;
	if (src < dst)
	{
		src += n;
		dst += n;
		while (n--)
			*(char*)--dst = *(char*)--src;
	}
	else
		while (n--)
			*(char*)dst++ = *(char*)src++;
	return (ret);
}
