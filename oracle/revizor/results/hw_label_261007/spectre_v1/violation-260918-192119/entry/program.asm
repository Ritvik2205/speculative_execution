.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56 
lea rax, qword ptr [rsi] 
and bl, bl 
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi] 
or di, cx 
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92 
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx] 
bt ecx, 198 
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430 
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85 
lea rsi, qword ptr [rdi + rdi + 14128] 
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax 
adc ax, -26452 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
