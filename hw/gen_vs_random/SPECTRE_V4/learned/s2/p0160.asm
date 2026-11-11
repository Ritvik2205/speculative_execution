.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
cmp rdi, 28
and cl, sil
sub al, 0
or al, 1
xchg rbx, rsi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
test al, -26
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
sub al, bl
sbb dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor al, -66
sbb cx, 29
sub dl, sil
and sil, dl
adc bl, 35
adc cl, -86
adc cl, -86
xor dl, -66
neg cl
mov al, sil
xor dil, bl
and cl, al
xor eax, -1772786275
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and al, -1
xor ax, -22861
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
