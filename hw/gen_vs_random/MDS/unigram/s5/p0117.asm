.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, esi
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test cl, al
and dil, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and sil, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor rbx, rdi
and al, 75
cmovp edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
