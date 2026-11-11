.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
cmovs ax, dx
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor esi, esi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
cmovle rbx, rcx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
btc cx, 104
cmovo di, di
cmovo rdx, rdi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
