.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, eax
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
add cl, 103 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
setnl dl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
sub sil, -18
lea bx, qword ptr [rsi + rax + 83]
lea ecx, qword ptr [rcx + rsi + 73]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
movzx edx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
