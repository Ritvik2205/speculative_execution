.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
or sil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
xor si, 80
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
xor bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
jmp .bb_0.1
.bb_0.1:
btc ecx, 100
cmovnbe bx, si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rdi, 39
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
cmovns esi, ebx
btc cx, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
