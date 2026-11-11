.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
lea dx, qword ptr [rdi + rcx]
or cl, dl
lea rax, qword ptr [rdx]
xchg al, bl
cdq
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rsi + rax]
xor cl, sil
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
