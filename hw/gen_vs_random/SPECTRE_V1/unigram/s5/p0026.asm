.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ax
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
bt edx, esi
add cl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add al, 107 # instrumentation
lea ebx, qword ptr [rdi + rax + 44]
lea rsi, qword ptr [rbx + rax + 7]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 45
sub rdx, 47
cmovnbe rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
