.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
add cl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 92
lea rcx, qword ptr [rdi + rcx]
sub dil, 87
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
add al, 109 # instrumentation
adc cx, 27
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
lea cx, qword ptr [rbx + rax]
cmovb ebx, ebx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
inc ebx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
