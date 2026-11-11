.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
setnle dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rsi, 14
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea eax, qword ptr [rbx]
neg rsi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 96
add dl, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
mov cl, cl
add sil, 125 # instrumentation
adc sil, dl
lea bx, qword ptr [rsi + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 76
and bl, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
