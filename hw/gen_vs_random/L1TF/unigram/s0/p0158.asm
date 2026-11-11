.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 7
or rax, -443578116
lea ecx, qword ptr [rdi + rax + 87]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
setnz al
jmp .bb_0.1
.bb_0.1:
imul rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
lea ebx, qword ptr [rcx + rcx + 78]
lea si, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
imul rcx
add bl, 93 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 20
lea bx, qword ptr [rdi + rdi + 35]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
