.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sub cl, -49
xor al, cl
lea rbx, qword ptr [rdi + rsi]
test edi, 45
jmp .bb_0.1
.bb_0.1:
or eax, ebx
or al, -48
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
dec eax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
