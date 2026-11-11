.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
lea di, qword ptr [rsi]
btc si, ax
add al, -46
jmp .bb_0.1
.bb_0.1:
xor bl, dil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
xor cl, bl
cmovle rax, rsi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 46
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
