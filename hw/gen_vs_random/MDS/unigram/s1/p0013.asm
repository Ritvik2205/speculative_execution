.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, 52
bts rdi, 130
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
btc esi, 199
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 46
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
bts ax, 22
and rcx, -63
and al, 54 # instrumentation
cmovnp dx, dx
btr cx, 136
jmp .bb_0.1
.bb_0.1:
not rcx
test cl, cl
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
bts rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
