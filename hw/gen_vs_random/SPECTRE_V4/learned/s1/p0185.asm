.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 62
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 88
sub cl, -74
cmovp ebx, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
dec cx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and al, -127
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movsx eax, bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
sub ebx, eax
btc dx, 119
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and al, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
