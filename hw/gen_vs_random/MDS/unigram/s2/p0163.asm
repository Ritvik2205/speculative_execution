.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
bt eax, eax
or al, -48
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
btr ebx, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and sil, cl
cmovle ebx, ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 92
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 77
xor rbx, -51
xor eax, 1170472196
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
or al, -48
cmovs di, cx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
