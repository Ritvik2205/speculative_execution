.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
or al, 54
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test bl, al
xor cl, al
jmp .bb_0.1
.bb_0.1:
cmovns di, ax
and cx, -8
test sil, bl
jmp .bb_0.2
.bb_0.2:
test bl, -114
or sil, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
