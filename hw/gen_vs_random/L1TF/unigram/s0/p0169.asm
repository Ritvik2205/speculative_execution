.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 88
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
seto cl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 18
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
setp bl
cmovnb rax, rdx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
cmovns edi, eax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
and dl, 32
imul dx, di, 103
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
