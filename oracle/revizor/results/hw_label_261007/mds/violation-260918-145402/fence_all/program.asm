.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnb rdx, qword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnb ebx, dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rdi], 1 
lfence
and cl, 89 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovbe rdx, qword ptr [r14 + rsi] 
lfence
cmovs ax, dx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
lock btc dword ptr [r14 + rax], eax 
lfence
and dl, 116 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe rdx, qword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnl rdi, qword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], cx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rsi], 502418390 
lfence
jmp .bb_0.1 
.bb_0.1:
btc cx, 104 
lfence
xor esi, esi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rdi], 2 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rbx], cx 
lfence
cmovo di, di 
lfence
cmovo rdx, rdi 
lfence
cmovle rbx, rcx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdi], 66 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], 77 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
