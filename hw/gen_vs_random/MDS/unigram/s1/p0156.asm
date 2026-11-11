.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 68
and dil, 122 # instrumentation
cmovnb rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
btc rbx, 35
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
cmovb eax, edi
cmovz rax, rdx
and dl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
cmovle edx, ecx
cmovb di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
