.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
add bl, 55 # instrumentation
lea ebx, qword ptr [rdx + rsi + 26]
mul rdx
or sil, -44
dec edx
and sil, sil
imul rcx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 35
add al, -40 # instrumentation
sbb rax, 1153316263
lea bx, qword ptr [rbx]
cbw
add bl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
lea ebx, qword ptr [rdi + rsi]
and bx, 32
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
