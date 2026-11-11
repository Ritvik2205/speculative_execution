.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
add dil, 105
cmp cl, 59
or sil, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
adc dl, sil
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
sbb cl, dl
sub al, 59
adc bl, al
cmp eax, 1521417271
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmp al, sil
sub cl, dil
not cl
or dil, dil
add dl, dl
and al, dil
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
cmp dil, dl
adc sil, -63
or eax, -1779536330
add bl, dl
add dil, 75
sub dl, -16
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
