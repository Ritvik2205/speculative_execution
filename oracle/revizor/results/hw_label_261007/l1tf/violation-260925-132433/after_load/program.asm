.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx] 
adc sil, cl 
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl 
lfence
btc di, ax 
imul bx, cx 
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di 
lfence
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx] 
lfence
lea ax, qword ptr [rdx] 
jmp .bb_0.1 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1 
lfence
adc rbx, 75 
sbb cl, dl 
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx] 
lfence
lea rdi, qword ptr [rbx + rax] 
bt rdi, rax 
add dl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
