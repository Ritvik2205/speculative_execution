.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
or eax, ecx
and rdi, rdi
cmovz edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
cmovnp rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovz rsi, rax
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsf si, si
not cl
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
