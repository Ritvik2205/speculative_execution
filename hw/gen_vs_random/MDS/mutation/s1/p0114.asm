.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
cmovnle rbx, rax
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and ax, 29207
test cl, cl
bts edx, ebx
xor rax, -1499464454
not al
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
xor sil, cl
xor eax, 2063216578
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
test rax, -648054011
and rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
