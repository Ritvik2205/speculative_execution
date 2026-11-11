.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
xor al, 89
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and al, -68
lea rax, qword ptr [rdi + rdx + 31]
cmovnle rdx, rdi
and bl, dl
xor dl, al
jmp .bb_0.1
.bb_0.1:
and bl, 32 # instrumentation
cmovnbe ebx, ecx
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
