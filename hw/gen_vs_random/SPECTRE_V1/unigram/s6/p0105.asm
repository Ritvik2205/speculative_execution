.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 11
cmovnl rsi, rbx
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add dl, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], -38
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 68
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
btr rax, rcx
lea rcx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
add cl, -23 # instrumentation
cmovl dx, ax
cmp bl, al
lea rbx, qword ptr [rdx + rax + 14]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
