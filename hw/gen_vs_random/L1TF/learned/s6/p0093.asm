.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
lea rsi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, dl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
lea rdx, qword ptr [rcx + rdx + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
