.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rax], 5 
lfence
cmovnbe si, si 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo si, word ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rdx], cx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sub cl, byte ptr [r14 + rsi] 
lfence
mov bl, 59 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, 51 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnle bx, word ptr [r14 + rdx] 
lfence
setnz bl 
lfence
cmp dl, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnbe ax, word ptr [r14 + rax] 
lfence
sub bl, al 
lfence
btc dx, 69 
lfence
lea edx, qword ptr [rax] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdi], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
