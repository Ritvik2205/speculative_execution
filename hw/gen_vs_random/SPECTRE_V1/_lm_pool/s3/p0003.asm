.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -40
mov dil, dl
sub cl, dl
lea rcx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
