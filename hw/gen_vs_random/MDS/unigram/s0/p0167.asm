.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
or bx, 29
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 9
cmovo rdx, rdx
cmovz ebx, ebx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or al, 54
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and bl, -56 # instrumentation
cmovnle esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and cl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
