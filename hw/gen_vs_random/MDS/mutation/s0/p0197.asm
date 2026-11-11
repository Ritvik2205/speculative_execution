.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
or eax, ecx
cmovnz ebx, ebx
cmovnp rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
cmovz edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovz rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
