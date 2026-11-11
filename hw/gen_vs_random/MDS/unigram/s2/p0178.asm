.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and al, -114
xor cl, 55
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rbx, 65
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
cmovb bx, ax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
test ax, di
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
