.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
add al, -55
and cl, bl
jmp .bb_0.1
.bb_0.1:
add al, -4
or si, -84
or bl, al
and sil, -84
add al, 40
or dl, dl
test bl, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
or rax, -823069511
test al, -38
cmp rax, 1682181214
cmp cl, 49
cmp al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmp rax, 40
mov bl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
sub ax, -1393
add dl, cl
cmp al, 116
test eax, -651442446
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
cmp dil, -92
and cx, -117
add al, -99
cmp al, 116
sub al, 86
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
