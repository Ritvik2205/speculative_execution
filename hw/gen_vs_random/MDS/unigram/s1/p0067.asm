.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
or dx, dx
or sil, -78
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
cmovnp si, si
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and dl, bl
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
btc ecx, 74
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
btc di, di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
btr rax, 56
cmovno rcx, rdi
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
