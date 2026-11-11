.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 88
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 88
btc dx, ax
add dl, -103 # instrumentation
cmovnz dx, di
setnz dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
lea cx, qword ptr [rax + rdx]
cdq
add al, -37 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
mul ebx
bt eax, edx
add cl, -49 # instrumentation
adc cl, sil
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
