.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -90
xor ax, 30500
and al, 59
adc cl, dl
cmp eax, 64
sbb dil, dl
adc cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
neg rax
sbb ebx, -54
adc bl, 35
xor rax, -224991767
and dil, 8
bts bx, 42
sbb dil, 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or dl, bl
and sil, cl
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
