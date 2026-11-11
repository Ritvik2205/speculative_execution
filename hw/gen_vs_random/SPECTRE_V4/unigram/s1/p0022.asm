.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and dx, -107
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
imul sil
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmp bl, 12
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 79
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
add rdi, rdi
and si, bx
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
cmp rax, rcx
cmovb di, bx
cmovbe dx, bx
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 72
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 16
and bl, 76
imul ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 54
xor cl, sil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and ax, 26513
cmovb esi, edx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
sub cx, si
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
test bl, -91
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
cmp rbx, -66
cmp cl, -105
sub bx, dx
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
