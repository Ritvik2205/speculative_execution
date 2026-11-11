.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 43
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, -24
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
xor al, -26
xor ax, -23364
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
btc esi, 199
or cl, 6
and al, -55
xor dl, al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
bt si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
