.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp rdi, qword ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setbe byte ptr [r14 + rdx] 
lfence
test eax, 1939511779 
lfence
or ax, 0b1000 # instrumentation
lfence
and al, 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv ax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rdx], 7 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb qword ptr [r14 + rdx], rbx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb bx, word ptr [r14 + rbx] 
lfence
lea rcx, qword ptr [rax + rdx + 60461] 
lfence
cmovo dx, cx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bts dword ptr [r14 + rax], 3 
lfence
add dl, -3 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs dx, word ptr [r14 + rcx] 
lfence
xor bl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rcx], eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sbb ax, word ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 1 # instrumentation
lfence
and rdx, qword ptr [r14 + rsi] # instrumentation
lfence
shr rdx, 1 # instrumentation
lfence
div qword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub al, byte ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
