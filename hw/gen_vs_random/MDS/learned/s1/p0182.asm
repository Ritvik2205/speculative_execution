.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
or rsi, 19
jmp .bb_0.1
.bb_0.1:
xor al, 99
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor rcx, 71
and al, dl
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor ax, -6793
not bl
xor dl, cl
test al, dil
or al, 37
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test rax, -359674714
and dil, -62
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
