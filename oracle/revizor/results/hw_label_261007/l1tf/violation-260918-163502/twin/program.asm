.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 43 # instrumentation
lea rcx, qword ptr [rsi + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz cx, word ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
lfence
btc dword ptr [r14 + rax], 1 
xchg cl, bl 
adc bl, bl 
sub sil, 45 
and rdi, 0b1111111111111 # instrumentation
lfence
add dx, word ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rbx] 
neg rsi 
and rax, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rax], -8 
and rsi, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rsi], 51 
cmovnp ecx, ebx 
lea rbx, qword ptr [rbx + rdi + 3362] 
and rcx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rcx], cl 
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
