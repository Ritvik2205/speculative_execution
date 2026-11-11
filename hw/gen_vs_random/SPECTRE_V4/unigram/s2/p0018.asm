.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
imul ecx
add edx, 89
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
bts rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 75
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
sbb bl, -98
test ecx, eax
movsx edx, sil
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
cmovbe rsi, rdx
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
imul cx, di
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
mov cl, al
add rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
cmovp edx, ecx
cmovno edx, esi
test rcx, 83
cmp edi, 3
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 13
or dx, si
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
cmovno edi, edx
add al, 111 # instrumentation
cmovno ecx, eax
or sil, -47
test dil, -26
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
or ax, 11396
neg rax
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
cmovnp dx, di
inc ax
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
