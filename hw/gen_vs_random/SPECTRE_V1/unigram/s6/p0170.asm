.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rax + 18654]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
seto dil
cmovnle rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno cx, dx
mul si
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
add al, 110 # instrumentation
movzx si, dil
lea dx, qword ptr [rdi + rdi + 30]
lea cx, qword ptr [rdx + rdi + 62]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 39
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 23
cmovnl rbx, rax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
