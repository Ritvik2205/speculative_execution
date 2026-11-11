.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
cmovnle rax, rax
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -32
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
cmovnz rdx, rdi
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 110
mov rsi, 8418490294875847673
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
