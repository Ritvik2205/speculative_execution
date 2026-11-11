.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and bl, bl
test cl, -18
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
test ecx, -1843375753
and eax, 454700988
or sil, al
test rdx, 36
and di, 99
xor dl, cl
bt ax, bx
or rdi, 21
and cl, -6
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rbx
or al, bl
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
