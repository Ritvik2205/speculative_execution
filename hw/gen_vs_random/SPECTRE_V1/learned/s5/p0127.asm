.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
adc dil, al
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
cmp al, sil
lea edi, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and dl, -92
test al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
