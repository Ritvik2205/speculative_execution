.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
sub rcx, -90
cmp bl, bl
lea rax, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
adc esi, -41
setz cl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
bts ecx, edx
or edi, 55
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
