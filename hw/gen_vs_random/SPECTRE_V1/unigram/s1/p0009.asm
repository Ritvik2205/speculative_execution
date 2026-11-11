.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl di, si
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
imul rax, rdi, 100
cmovo edx, ebx
sub eax, -518999763
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mov rdx, rdi
cmovnl ebx, edx
or ax, dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
setle cl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
or rcx, 84
sub rdx, 52
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
