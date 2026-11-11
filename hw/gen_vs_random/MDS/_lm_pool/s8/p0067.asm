.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor rbx, 89
and ax, 5001
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or ax, 85
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and sil, -56
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
