.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil 
lfence
and bl, dl 
lfence
lea rdx, qword ptr [rdx + rax + 10045] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc cx, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rcx], 62 
lfence
or dil, -28 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rsi] 
lfence
cmp eax, 912798305 
lfence
or rdx, -98 
lfence
inc sil 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rsi], bx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
dec word ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf ebx, dword ptr [r14 + rbx] 
lfence
add dl, -126 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc cl, byte ptr [r14 + rbx] 
lfence
btc cx, 31 
lfence
lea eax, qword ptr [rbx + rdi + 265] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
