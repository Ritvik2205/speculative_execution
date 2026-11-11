.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz cx, si
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and bl, -74 # instrumentation
cmovns edi, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
bts eax, 222
test dil, al
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rax, -978188247
cmovbe edx, ecx
cmovnbe rdx, rcx
cmovnz si, bx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
bts rsi, rax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
cmovs rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
or cl, -77
btr bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
