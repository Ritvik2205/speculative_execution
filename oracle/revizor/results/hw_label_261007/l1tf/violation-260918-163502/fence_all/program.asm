.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 43 # instrumentation
lfence
lea rcx, qword ptr [rsi + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz cx, word ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rsi] # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rax], 1 
lfence
xchg cl, bl 
lfence
adc bl, bl 
lfence
sub sil, 45 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add dx, word ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rbx] 
lfence
neg rsi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rax], -8 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rsi], 51 
lfence
cmovnp ecx, ebx 
lfence
lea rbx, qword ptr [rbx + rdi + 3362] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rcx], cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
