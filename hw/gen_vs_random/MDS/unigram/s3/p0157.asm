.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 60
and rbx, rsi
bts rbx, 25
xor rcx, 71
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
or sil, al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnp rbx, rax
or cl, sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
cmovnb ebx, edi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovz edi, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 100
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and bl, al
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
btc rax, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
