/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: egrazina <egrazina@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/16 18:10:44 by egrazina          #+#    #+#             */
/*   Updated: 2021/03/09 10:31:04 by egrazina         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t		s1;
	size_t		s2;

	if (dstsize <= ft_strlen(dst))
		return (dstsize + ft_strlen(src));
	s1 = ft_strlen(dst);
	s2 = 0;
	while (src[s2] != '\0' && s1 + 1 < dstsize)
		dst[s1++] = src[s2++];
	dst[s1] = '\0';
	return (ft_strlen(dst) + ft_strlen(&src[s2]));
}
