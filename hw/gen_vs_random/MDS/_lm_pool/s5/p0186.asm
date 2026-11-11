.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
test dil, 46
bts di, cx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
test al, -81
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
xor sil, 27
jmp .bb_0.1
.bb_0.1:
test al, -7
and dl, -73
and bx, 7
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
xor dil, -70
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
