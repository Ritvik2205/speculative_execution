.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
movzx ecx, dx
sbb dil, -106
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
lea edx, qword ptr [rcx]
cmp dil, dil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
adc bl, 88
sbb sil, al
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
seto bl
movzx edi, dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
adc dil, 98
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
cmovnz ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
