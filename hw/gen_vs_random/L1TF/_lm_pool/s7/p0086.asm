.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
not edi
inc sil
or rbx, 18
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and dil, -22
jmp .bb_0.3
.bb_0.3:
cmp ax, -21455
lea rbx, qword ptr [rdi + rdx + 62]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
