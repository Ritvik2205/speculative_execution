.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
xor rdx, 34
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 75
sbb cl, bl
btc edx, 169
xor bl, cl
movzx si, dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
