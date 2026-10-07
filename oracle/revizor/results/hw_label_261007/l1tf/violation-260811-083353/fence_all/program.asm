.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 89 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovz esi, dword ptr [r14 + rdi] 
lfence
adc dl, cl 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock neg dword ptr [r14 + rbx] 
lfence
cmovnb rdx, rdx 
lfence
sbb cl, bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb rcx, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rcx, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rbx], rcx 
lfence
mul bl 
lfence
add bl, 13 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe di, word ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rdx], bx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul rax, qword ptr [r14 + rcx] 
lfence
xor edi, 48 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs cx, word ptr [r14 + rsi] 
lfence
not dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdi], rdx 
lfence
lea cx, qword ptr [rdx + rsi + 32229] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
