.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and ebx, ebx
and bl, 65 # instrumentation
cmovnbe dx, di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
or dil, -41
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
test si, 85
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 39
btr di, si
or dx, 125
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 78
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
