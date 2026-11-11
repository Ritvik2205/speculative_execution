.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and cx, -2
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or ax, 16560
test al, dil
or sil, bl
xor bl, -27
xor sil, -15
or sil, -49
and dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or cl, 119
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
