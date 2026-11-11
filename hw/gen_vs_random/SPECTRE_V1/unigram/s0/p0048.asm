.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
not edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
lea dx, qword ptr [rbx + rdx]
add bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
sets bl
sbb edx, 105
bt esi, 69
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
add rax, 977059290
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
