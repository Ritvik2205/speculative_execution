.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, al
mov cx, dx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
mov bl, dil
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 8
lea ecx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
test dl, 21
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
cmovl ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
