.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 26
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and sil, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
or di, ax
cmovb rbx, rdx
sub al, dl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
sub dl, 43
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb al, 123
or dil, dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 9
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
sub ebx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
test rax, -331426050
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
adc al, al
cmp ax, -15031
adc al, bl
not rdx
lea ebx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
