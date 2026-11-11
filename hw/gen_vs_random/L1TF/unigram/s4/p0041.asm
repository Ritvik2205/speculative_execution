.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb bl
test cl, 13
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 44
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
or dil, al
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
neg cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
test rsi, 493258429
add al, 100 # instrumentation
lea dx, qword ptr [rax]
xor rsi, rdx
movsx di, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
