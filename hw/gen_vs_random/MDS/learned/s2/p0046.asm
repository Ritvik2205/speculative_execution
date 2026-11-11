.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
test bl, -114
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
or cl, 6
xor cl, al
test rsi, 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or bl, dl
xor ax, -16696
and dl, -73
xor dl, -43
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test bl, al
xor cx, -18
sbb al, 58
xor dx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
