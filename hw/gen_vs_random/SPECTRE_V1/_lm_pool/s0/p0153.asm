.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add bl, cl
xor al, sil
xor dl, dil
and al, cl
cmovbe ebx, ecx
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
