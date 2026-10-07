.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx 
add ax, -16969 
adc bl, 27 
sets cl 
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31 
cmp cl, 3 
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al 
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax 
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
lfence
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
