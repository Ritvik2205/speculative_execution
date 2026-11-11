.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
xchg dl, cl
or eax, -62
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add sil, -61
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
