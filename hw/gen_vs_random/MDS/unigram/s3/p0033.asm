.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and bx, 51
bts bx, 3
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 76
test cx, 401
test rcx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 23
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or dil, -78
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
or rax, rdi
or bl, 13
cmovz si, si
and dl, 84 # instrumentation
cmovle di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
