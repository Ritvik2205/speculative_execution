.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30500
test al, dl
add dil, cl
or ax, 48
xor al, -31
sbb dil, 82
cmp rdx, -49
or rax, -823069511
cmp dl, cl
adc dl, dil
add cl, -9
and dx, -107
cmp al, -78
add dl, bl
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
adc bl, 79
xor dil, -23
add dl, -8
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
cmp al, -106
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
not sil
and al, 100
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
or edi, -64
bts ecx, 0
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
