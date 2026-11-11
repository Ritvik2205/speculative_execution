.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
lea eax, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or cx, 27
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
cmovl eax, ecx
cmovz rdx, rax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc rsi, 26
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
add al, -1 # instrumentation
nop
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
