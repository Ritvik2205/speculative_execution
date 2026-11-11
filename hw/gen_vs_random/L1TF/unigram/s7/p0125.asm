.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 9
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
add bl, 111 # instrumentation
cmovs rdx, rdx
cwd
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
lea ax, qword ptr [rdx + rdi]
lea rax, qword ptr [rdx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 40
btc rax, 14
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
cmovz ax, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xor cl, al
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
inc dil
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
