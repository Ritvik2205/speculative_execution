.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdx], cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
setnp byte ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rax], 6 
lfence
inc ax 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rsi], -31 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setbe byte ptr [r14 + rsi] 
lfence
adc dl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp eax, dword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul dword ptr [r14 + rcx] 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rdi], sil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl rdi, qword ptr [r14 + rax] 
lfence
xor bl, cl 
lfence
imul cx, di, 19 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rax], -109 
lfence
lea si, qword ptr [rdi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
lock bts word ptr [r14 + rdi], di 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
