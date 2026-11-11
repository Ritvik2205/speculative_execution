.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
cmovbe eax, ebx
lea esi, qword ptr [rcx + rsi + 4]
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
setnz sil
inc ecx
cmp rbx, rbx
cmovz eax, edx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sub dx, 34
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
or dl, cl
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
