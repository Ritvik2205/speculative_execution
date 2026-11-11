.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
xor cl, -13
xor ecx, 8
jmp .bb_0.4
.bb_0.4:
and ax, -4410
or sil, sil
jmp .bb_0.5
.bb_0.5:
xor eax, 2063216578
not bl
or cl, dl
jmp .bb_0.6
.bb_0.6:
and cx, -2
test rax, -359674714
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
