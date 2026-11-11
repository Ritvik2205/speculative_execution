.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
cmp al, -1
or bl, dl
or al, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and cl, -118
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
cmp al, 109
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
adc eax, -3570960
adc al, dl
and al, cl
test eax, 1947430392
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
cmp al, -116
sbb al, 95
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub dl, al
and bl, al
cmovnb edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
