.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rdx]
cmp al, dl
or ebx, -124
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
lea di, qword ptr [rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 53
add al, sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
