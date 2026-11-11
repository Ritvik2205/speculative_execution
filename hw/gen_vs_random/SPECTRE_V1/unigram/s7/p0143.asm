.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 56
not si
lea bx, qword ptr [rdx + rsi + 52]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
not di
sbb dl, al
cmovnp rdi, rax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
