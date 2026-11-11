.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
and dil, -39
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
btr di, bx
and al, 82
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
xor al, 55
or al, -24
jmp .bb_0.3
.bb_0.3:
test cl, dil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
test al, -81
and cx, -8
jmp .bb_0.4
.bb_0.4:
and rdx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
