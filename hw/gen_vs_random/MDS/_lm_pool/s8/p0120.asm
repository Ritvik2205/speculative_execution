.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rdi, 32
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or dil, -41
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
