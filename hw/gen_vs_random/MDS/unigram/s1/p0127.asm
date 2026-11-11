.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
bts si, di
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 50
cmovo rcx, rdx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovns bx, ax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 82
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 7
xor bl, cl
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
xor bl, -61
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
cmovz cx, si
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
