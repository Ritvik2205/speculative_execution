.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add cl, 88
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
