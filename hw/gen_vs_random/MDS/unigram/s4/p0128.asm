.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -21
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
cmovl ecx, ecx
and dl, 107 # instrumentation
cmovs eax, edi
bts bx, ax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edx
and dil, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
test cl, bl
xor cl, 122
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and cl, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and al, cl
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
test cl, 56
btc rsi, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
cmovz rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
