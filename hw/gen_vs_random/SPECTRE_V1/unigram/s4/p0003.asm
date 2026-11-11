.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 60
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add sil, -47 # instrumentation
setbe sil
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
lea rax, qword ptr [rsi + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
add sil, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, cl
cmovnz si, ax
lea ebx, qword ptr [rsi + rsi + 62]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
lea rcx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
