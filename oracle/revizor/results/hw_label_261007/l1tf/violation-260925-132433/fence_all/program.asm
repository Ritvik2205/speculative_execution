.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lfence
lea ecx, qword ptr [rcx + rbx] 
lfence
adc sil, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rdx], cl 
lfence
btc di, ax 
lfence
imul bx, cx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rsi], di 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx esi, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnl rdx, qword ptr [r14 + rcx] 
lfence
lea ax, qword ptr [rdx] 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
bts dword ptr [r14 + rdi], 1 
lfence
adc rbx, 75 
lfence
sbb cl, dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub cl, byte ptr [r14 + rbx] 
lfence
lea rdi, qword ptr [rbx + rax] 
lfence
bt rdi, rax 
lfence
add dl, -76 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle rsi, qword ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
