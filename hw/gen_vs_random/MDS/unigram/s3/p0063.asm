.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and bl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 37
cmovs eax, ebx
and cl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
btc rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
xor cx, dx
and cl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
bt rcx, 137
btc rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
and si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
