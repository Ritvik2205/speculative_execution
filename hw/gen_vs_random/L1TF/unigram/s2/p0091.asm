.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, dx, 2
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
add dl, 120 # instrumentation
adc cl, 66
xchg al, al
sbb bx, 75
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
sub rcx, -121
imul ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
