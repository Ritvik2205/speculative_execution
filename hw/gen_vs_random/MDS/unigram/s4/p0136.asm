.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
or dl, dl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 57
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
or dl, -18
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 93
bts bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
or bl, al
cmovnbe dx, cx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
