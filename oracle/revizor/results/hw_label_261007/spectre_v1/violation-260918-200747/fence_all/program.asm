.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rcx], bx 
lfence
add ax, -16969 
lfence
adc bl, 27 
lfence
sets cl 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rcx], 31 
lfence
cmp cl, 3 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rax], al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
bts qword ptr [r14 + rbx], rax 
lfence
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rdx], rbx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], -58 
lfence
cmovnz rdx, rdi 
lfence
sub cl, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rdx], bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rbx], 67 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
imul rdx, qword ptr [r14 + rsi], 110 
lfence
mov rsi, 8418490294875847673 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
