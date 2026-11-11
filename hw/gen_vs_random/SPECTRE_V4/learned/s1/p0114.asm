.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor al, al
or bx, -33
cmp sil, dil
sbb al, 43
and al, -1
test bl, 78
sbb al, -52
sub cl, -119
cmp al, -44
and cl, dil
adc cl, -66
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
sub cl, dl
adc sil, cl
xor ax, 13329
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmovno edi, ecx
sub bl, sil
sub al, 86
test eax, -251558852
xor cl, dl
add bl, -49
adc dil, al
movsx ax, dl
and cl, dl
sub dl, al
or al, bl
xor al, sil
test bl, cl
sub sil, -35
adc sil, dl
or al, -19
adc dil, -15
and ax, -16777
cmp al, dil
add dl, al
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
