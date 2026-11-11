.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or edx, edi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or dl, -18
and si, 61
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 51
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
cmovnb rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 76
jmp .bb_0.1
.bb_0.1:
and di, 30
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 57
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 87
and cl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
