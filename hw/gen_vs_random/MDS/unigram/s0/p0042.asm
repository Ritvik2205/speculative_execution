.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 5
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
bt rcx, rbx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and cl, 8 # instrumentation
cmovnl rax, rcx
test rbx, 57
bts ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
cmovns ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
btr edx, 255
cmovnb ebx, eax
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
cmovz esi, edx
and bl, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
