.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
bswap rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
lea rax, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovs edx, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
or ebx, edx
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
