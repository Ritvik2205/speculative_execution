.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
xor cl, 55
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
test dl, sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor ax, 23633
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
or bl, sil
jmp .bb_0.5
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
bt cx, di
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
