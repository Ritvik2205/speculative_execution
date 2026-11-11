.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
imul al
setz al
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx + rbx + 89]
lea bx, qword ptr [rsi + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
sub cl, -21
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
