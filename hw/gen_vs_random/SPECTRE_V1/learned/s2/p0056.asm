.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 70
sets cl
btc dx, 69
bts edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
sub al, 10
or dl, cl
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
sub sil, sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 35
xor al, 86
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
