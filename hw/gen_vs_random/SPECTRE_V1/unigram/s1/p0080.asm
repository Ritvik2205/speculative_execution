.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
adc cl, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
lea rbx, qword ptr [rax]
lea ebx, qword ptr [rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
mov esi, ebx
lea eax, qword ptr [rax + rdi + 1]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
sub dil, bl
dec bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
