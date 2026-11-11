.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 69
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 18
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 38
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
imul dx, cx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
bt rcx, 52
xor dl, 59
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
add cl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
cmovnb si, di
setns sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
