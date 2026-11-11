.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
lea ax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and al, bl
or rax, 1362710293
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
cmp al, 56
jmp .bb_0.1
.bb_0.1:
sub sil, bl
and al, cl
bts di, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
