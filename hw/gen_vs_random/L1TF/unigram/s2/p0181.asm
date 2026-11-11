.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx + rdi]
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add ecx, eax
lea rcx, qword ptr [rsi + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 24
btc rdx, 71
sbb dl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 80
jmp .bb_0.1
.bb_0.1:
adc al, sil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
sbb rdx, 93
setp sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
