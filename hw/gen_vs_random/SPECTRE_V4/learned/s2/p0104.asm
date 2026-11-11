.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
cmp dl, dil
cmp al, cl
dec bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
or al, al
and al, 100
or eax, -1213318393
and dil, bl
mov sil, dl
test edx, ebx
sub ax, 25338
or dil, bl
xor rbx, -99
cmp dil, -92
sub dl, al
xor dil, dl
adc dil, bl
sub al, dl
xor al, -60
xor sil, dil
cmp dil, cl
sub dl, al
and dx, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
