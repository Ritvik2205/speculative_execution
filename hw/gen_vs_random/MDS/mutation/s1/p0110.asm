.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
cmovs ax, dx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
cmovo di, di
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
btc cx, 104
cmovle rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
xor esi, esi
cmovo rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
