.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
bts edx, ebx
not al
xor rax, -1657511731
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
xor sil, cl
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and ax, 19224
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rbx, rbx
xor eax, -885380838
cmovnle rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
test rax, -2004802425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
