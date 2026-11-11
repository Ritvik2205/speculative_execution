.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -127 # instrumentation
setp cl
or ebx, -124
lea ecx, qword ptr [rcx + rdi + 65137]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
test ax, -13885
lea rsi, qword ptr [rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
mul sil
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
cmovp bx, di
lea ebx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
setns al
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
mov rbx, -8992833348021516010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
