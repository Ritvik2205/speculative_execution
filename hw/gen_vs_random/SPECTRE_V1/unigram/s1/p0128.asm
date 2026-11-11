.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
mov cx, di
adc bl, dl
adc bl, 27
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea cx, qword ptr [rbx + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp cx, ax
bt dx, 90
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
cmovnb di, si
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add cl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
