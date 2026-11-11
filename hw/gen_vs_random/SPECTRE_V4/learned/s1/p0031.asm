.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
mov bl, cl
adc sil, dl
sub sil, cl
add al, -6
cmp rsi, 22
test dil, 64
sub dil, -40
and al, 82
sbb cl, 45
adc cl, -4
test cl, -52
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
dec dl
test eax, 1340292467
cmp cl, 100
xchg edi, ecx
xor eax, 167244411
movsx si, bl
cmp rdi, 28
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
add cl, dl
sub al, 69
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
or cl, -55
test bl, -91
or bl, cl
dec dil
or eax, -646827727
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
