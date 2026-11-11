.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
cmovnle rbx, rax
test rax, 1207043993
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rbx, rbx
xor eax, 984871847
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and ax, -122
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
xor rax, -773894210
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
test cl, cl
or si, 0b1000000000000000 # instrumentation
bsr dx, si
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
