.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
lfence
cmovnl rdx, rbx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rbx], bl 
lfence
lea rbx, qword ptr [rcx + rax + 55452] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovle si, word ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp edx, dword ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
neg byte ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rax], 0 
lfence
add bl, -19 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo eax, dword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub dx, word ptr [r14 + rdi] 
lfence
btc cx, si 
lfence
lea rsi, qword ptr [rax + rdx] 
lfence
test eax, -1812342404 
lfence
jmp .bb_0.1 
.bb_0.1:
add al, 50 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovo di, word ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rdx], -12 
lfence
cmovnb rsi, rbx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovs esi, dword ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
