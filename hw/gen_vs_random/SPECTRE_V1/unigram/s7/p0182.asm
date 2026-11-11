.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb edi, 57
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and di, 11
dec rax
add rdi, 90
cmovl edi, ebx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 16
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 79
add dil, -75
adc cx, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and bl, sil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 54
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
