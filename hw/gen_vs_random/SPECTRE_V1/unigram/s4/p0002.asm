.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rcx, 58
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
mov rax, 19
cmovl rax, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
mov dx, si
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
cwd
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 51
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 70
adc bl, dil
dec rsi
cbw
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
