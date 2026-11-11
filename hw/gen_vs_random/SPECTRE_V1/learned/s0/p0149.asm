.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xchg sil, sil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmovl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
lea edx, qword ptr [rdi + rax + 45]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rcx, qword ptr [rax + rbx + 29]
jbe .bb_0.2
jmp .exit_0
.bb_0.2:
bt rcx, rdi
lea edi, qword ptr [rdx]
lea si, qword ptr [rsi + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
setnz dil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
bt dx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
