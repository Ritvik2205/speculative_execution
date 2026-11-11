.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
sub al, sil
adc sil, bl
xor ax, -22861
xor bl, cl
cmp al, bl
and al, -118
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and dil, dil
sbb bl, al
and dl, al
sub cl, -94
xor si, -73
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and cl, dl
and sil, al
and dil, sil
and di, -65
adc bl, 79
adc dil, -17
adc sil, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
