.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
cmovnle rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
xor rax, -345061362
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
not al
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
xor eax, 1640090871
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
bts edx, ebx
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
