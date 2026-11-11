.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
or cl, dl
xor sil, -14
btc esi, 199
bts di, 37
and cl, -19
xor dil, al
btc dx, 146
cmovnz rbx, rsi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
cmovnz ecx, ebx
test sil, -55
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rcx
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor dl, 40
btr edx, 197
xor rcx, 71
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
