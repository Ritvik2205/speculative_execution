.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 66
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
lea edi, qword ptr [rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 41
sub rcx, 13
and al, dl
adc cx, dx
btr ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
