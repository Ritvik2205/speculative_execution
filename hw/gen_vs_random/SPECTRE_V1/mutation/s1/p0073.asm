.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
cmp rsi, 53
sbb al, 49
cmovle dx, di
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
bswap rcx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
mov rdx, 3609511260715352814
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
