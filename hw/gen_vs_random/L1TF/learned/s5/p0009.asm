.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rax]
and ax, 37
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 10
test al, -70
jmp .bb_0.1
.bb_0.1:
mul edi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and cl, 36
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
