.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, 1207043993
and ax, -12519
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
xor rax, -1499464454
bts edx, ebx
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
cmovnle rbx, rax
not al
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
xor eax, 571592471
test cl, cl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
