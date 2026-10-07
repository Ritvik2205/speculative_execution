.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rdi], 56 
lfence
lea rax, qword ptr [rsi] 
lfence
and bl, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and dl, byte ptr [r14 + rsi] 
lfence
or di, cx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rcx], 92 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rdx] 
lfence
bt ecx, 198 
lfence
add al, 45 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo cx, word ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rcx], 1272979430 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rbx], 85 
lfence
lea rsi, qword ptr [rdi + rdi + 14128] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock neg word ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and cl, byte ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
btc qword ptr [r14 + rdi], rax 
lfence
adc ax, -26452 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
