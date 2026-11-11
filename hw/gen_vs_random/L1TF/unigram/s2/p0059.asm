.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
setbe bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmovz dx, di
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
adc al, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 3
xor ax, 32760
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
add al, -9 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 82
sub dx, 34
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
