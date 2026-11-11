.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
imul ax, cx
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
or al, cl
cmovnbe cx, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub eax, -518999763
sub cx, 81
xor dl, sil
mov bl, al
setnz dil
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
