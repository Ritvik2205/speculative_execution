.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and ax, 339
or dil, -71
not dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
btr bx, cx
xor dil, cl
and ax, 29207
and bl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
or cl, al
xor cx, -18
and cx, -2
xor cl, bl
xor cx, -18
jmp .bb_0.2
.bb_0.2:
and di, 91
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
