.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
mov cl, dl
inc edi
lea edi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
cmp dil, bl
test dil, -116
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
