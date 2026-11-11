.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 58
xor al, 122
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
test al, -7
and rax, -2058103810
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor dil, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
