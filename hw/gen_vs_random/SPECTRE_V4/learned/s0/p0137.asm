.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
dec dl
sbb al, -43
xor ax, 15671
jmp .bb_0.1
.bb_0.1:
and eax, 1913354318
xchg rdi, rdx
adc sil, al
cmp cl, sil
cmp sil, cl
test dl, 114
sub al, 63
sbb dil, 18
sub bl, -98
sub dil, 65
sub al, 69
cmp al, 116
sub dl, -16
dec sil
or cl, cl
or cl, cl
cmovle rdx, rax
mov dl, 81
cmp al, 98
xor ax, -29507
sbb dl, bl
xor dil, 117
test sil, al
cmp al, -44
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, 41
cmp bl, sil
adc al, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
