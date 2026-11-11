.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and cl, 49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
test eax, 343548072
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
btr si, dx
or eax, -696456144
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 87
or al, 24
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
cmovz edx, ebx
cmovnz si, dx
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
bts bx, 3
cmovb rcx, rax
test al, dil
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
