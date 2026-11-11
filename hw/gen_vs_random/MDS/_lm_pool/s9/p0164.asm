.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
xor ebx, 40
xor bl, -61
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test dl, bl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor al, 99
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 1886208862
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovnp rax, rcx
xor al, -4
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor al, -89
xor rax, -1128378406
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
