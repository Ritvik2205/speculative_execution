.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rax + rsi]
lea rdx, qword ptr [rdx + rdi + 56]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
setbe dil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 8
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
lea si, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rcx + rax + 57]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
neg sil
cmp ax, 24210
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
