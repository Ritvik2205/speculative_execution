.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil 
and bl, dl 
lea rdx, qword ptr [rdx + rax + 10045] 
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62 
or dil, -28 
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi] 
cmp eax, 912798305 
or rdx, -98 
inc sil 
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx 
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx] 
add dl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx] 
btc cx, 31 
lea eax, qword ptr [rbx + rdi + 265] 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
