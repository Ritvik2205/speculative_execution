.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
bt rcx, rsi
mul rax
lea rcx, qword ptr [rcx + rax + 52]
or bl, sil
setz cl
jmp .bb_0.1
.bb_0.1:
adc bl, 58
lea ax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
xor dil, al
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rax + 18]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
mov rdi, -5671708760962025403
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
