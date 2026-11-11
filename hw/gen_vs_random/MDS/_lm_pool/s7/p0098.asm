.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
test dil, sil
xor rcx, 71
xor dl, 8
and dil, -39
or cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and al, bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or al, 16
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or rsi, 91
cmovnp rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
