.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
test cl, 101
btc dx, ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
xor al, cl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
test dil, dil
and dl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
not ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
cmovns di, ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
and bl, 84 # instrumentation
cmovbe bx, cx
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
