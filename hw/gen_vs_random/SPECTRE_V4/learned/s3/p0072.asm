.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -26
sbb bl, 121
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
sbb dl, 53
cmovle rdx, rcx
or dil, -16
test cl, -119
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
movzx cx, dil
add dl, bl
mov cl, dil
adc dl, cl
sbb bl, -75
test al, -26
and al, -118
sbb cl, al
and cl, sil
sbb cl, al
sub al, 55
and bl, -60
adc dil, bl
xor sil, cl
sbb dx, 2
jmp .bb_0.1
.bb_0.1:
add cl, dl
cmp cl, dl
adc dl, 35
cmp al, 109
sub al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
