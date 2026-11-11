.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
xor sil, al
cmovno rbx, rdi
and sil, 32 # instrumentation
cmovnbe esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and sil, -69
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or sil, cl
or bl, cl
or dl, -89
test rdx, 10
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and cl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovp ax, di
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
