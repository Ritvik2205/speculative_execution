.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
and dl, sil
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and al, bl
or sil, sil
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
btr si, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
test dl, bl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and al, 14
and al, -128 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and bl, 65 # instrumentation
cmovnbe dx, cx
and dx, ax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and ax, -16061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
