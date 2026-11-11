.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
cmovnle rcx, rdi
and cl, 127
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 10
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 53
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and al, 33 # instrumentation
cmovnle eax, edx
jmp .bb_0.1
.bb_0.1:
or rdx, 98
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
cmovs rdx, rdi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovle cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 36
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
