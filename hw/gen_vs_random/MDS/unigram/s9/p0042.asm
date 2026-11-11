.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
cmovnle bx, cx
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
test bl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
btc rax, 106
cmovl rdi, rax
cmovle ebx, esi
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
not dl
and al, 17 # instrumentation
cmovnp edx, ebx
test si, 49
cmovnb rax, rcx
test bl, -9
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
cmovz esi, edx
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
