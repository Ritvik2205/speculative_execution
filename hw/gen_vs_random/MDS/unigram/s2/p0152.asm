.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
cmovno rbx, rbx
cmovns rsi, rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
test cl, cl
xor esi, 85
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
cmovns dx, bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and cl, -6
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
