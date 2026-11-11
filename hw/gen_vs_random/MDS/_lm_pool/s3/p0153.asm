.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
xor rbx, 89
and rbx, 65
test al, sil
xor rsi, -117
or bl, -52
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test al, 127
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and dil, -62
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and sil, -9
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmovnp rsi, rdi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
btr eax, 51
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
