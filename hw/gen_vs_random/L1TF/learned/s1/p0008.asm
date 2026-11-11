.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb ecx, edi
test dl, 84
movsx eax, sil
lea dx, qword ptr [rcx + rax + 20]
adc dil, sil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
lea rdi, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 89
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
