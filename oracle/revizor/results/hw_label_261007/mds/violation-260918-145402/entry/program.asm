.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx] 
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1 
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi] 
cmovs ax, dx 
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax 
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi] 
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx 
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390 
jmp .bb_0.1 
.bb_0.1:
btc cx, 104 
xor esi, esi 
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2 
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl 
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx 
cmovo di, di 
cmovo rdx, rdi 
cmovle rbx, rcx 
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66 
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
