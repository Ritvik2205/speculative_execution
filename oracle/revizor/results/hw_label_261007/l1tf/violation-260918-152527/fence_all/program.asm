.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ebx 
lfence
add al, 61 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rdx] 
lfence
setnle bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnl ax, word ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx bx, byte ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rbx], al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rbx], 4 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rax], dl 
lfence
jmp .bb_0.1 
.bb_0.1:
add cl, -84 # instrumentation
lfence
xchg rdx, rsi 
lfence
cmovnl dx, si 
lfence
btc ebx, ecx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rax], si 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setnp byte ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and bl, byte ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mul byte ptr [r14 + rax] 
lfence
imul rax, rax, -49 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
