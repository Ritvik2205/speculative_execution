.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 64
lea ecx, qword ptr [rdi]
xor dl, 19
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
xor dil, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
sub rsi, 64
and al, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
