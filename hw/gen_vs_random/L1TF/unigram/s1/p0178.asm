.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 24
or cx, 72
dec cx
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 21
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
sub al, -3
add al, 117
add cl, -73 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
cmp si, 54
lea bx, qword ptr [rdx + rax + 49]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
lea edx, qword ptr [rdx + rcx + 14]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
