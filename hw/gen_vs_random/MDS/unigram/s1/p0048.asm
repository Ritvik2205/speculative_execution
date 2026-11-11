.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
and si, bx
cmovnb si, bx
not rbx
xor edx, ebx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
cmovnz di, si
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 66
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and dl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
cmovo rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 65
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
