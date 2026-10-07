.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx 
lfence
sbb esi, -4 
lfence
setnb al 
lfence
sbb al, bl 
lfence
xor dl, bl 
lfence
sbb sil, 126 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rdi], -751147448 
lfence
cbw  
lfence
lea rdx, qword ptr [rdi + rcx + 38196] 
lfence
js .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
lfence
and esi, dword ptr [r14 + rsi] 
lfence
add dil, 27 
lfence
and bl, 46 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rdx], 22 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and rdx, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rdi, 0b111 # instrumentation
lfence
btc qword ptr [r14 + rbx], rdi 
lfence
add bl, 99 # instrumentation
lfence
sets bl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
