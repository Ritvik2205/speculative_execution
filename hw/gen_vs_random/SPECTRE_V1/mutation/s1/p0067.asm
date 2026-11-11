.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
xor dl, 71
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
or dl, 41
lea cx, qword ptr [rbx + rdx + 50177]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
lea dx, qword ptr [rdx + rax + 9274]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edx, ecx
imul rbx
btr bx, 193
sub cl, dl
setp dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
lea bx, qword ptr [rbx + rsi]
movsx si, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
cmovle dx, dx
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
