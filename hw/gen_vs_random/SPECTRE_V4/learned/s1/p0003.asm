.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -16
mov dl, cl
cmp cx, 0
test eax, -251558852
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
sbb eax, -920840872
adc dil, sil
mov al, cl
jmp .bb_0.1
.bb_0.1:
sub al, 55
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
movsx di, bl
xor dil, cl
cmp al, 116
adc cl, -86
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
sub al, 127
and sil, dl
test dx, 28394
mov dil, 82
adc cl, dl
cmp bl, sil
mov bl, cl
cmp al, 115
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
mov dil, cl
and bl, -119
xchg eax, ecx
or al, dl
dec sil
and dx, -107
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
