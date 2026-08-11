.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6 
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx] 
btr rbx, 193 
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax 
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65 
not rdi 
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx] 
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx] 
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx] 
or di, 0b1000000000000000 # instrumentation
bsr dx, di 
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2 
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85 
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi 
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012 
and ax, -122 
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rsi] 
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di 
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx] 
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
