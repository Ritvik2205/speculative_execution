.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
cmovns eax, esi
and dl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
or bx, 96
and bl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
cmovnp rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 92
xor al, -26
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 29
cmovnbe ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
xor bl, dl
or cl, al
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
