.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 40
btc esi, 199
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and dil, -62
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rdx
and eax, -85386306
and al, dil
and cl, -19
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
