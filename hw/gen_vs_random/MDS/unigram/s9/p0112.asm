.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
or edx, esi
cmovle cx, bx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rsi, rsi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and dl, dl
btc rcx, rcx
and dl, -59 # instrumentation
cmovbe ax, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 23
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
