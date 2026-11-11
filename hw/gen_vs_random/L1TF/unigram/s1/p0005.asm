.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rbx + rdx + 23]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
bt rcx, rcx
sub edi, 27
add cl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 100
inc cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb al, bl
lea rbx, qword ptr [rsi + rbx + 11]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
or dil, al
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax]
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
