.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 85
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
cmovle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 73
and bl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or bl, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 49
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
not dx
xor dil, bl
cmovno rbx, rdi
and rdx, 85
cmovns cx, dx
and al, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
cmovle si, cx
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
