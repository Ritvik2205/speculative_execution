.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and cl, -101
cmp cl, dl
cmp al, dl
adc sil, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
sbb esi, 96
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
test al, 72
and dl, al
or cl, cl
sub dil, -28
adc dil, dl
or di, 2
mov cl, sil
sub eax, -1627558845
and bl, dl
xor rdi, -72
adc bl, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
