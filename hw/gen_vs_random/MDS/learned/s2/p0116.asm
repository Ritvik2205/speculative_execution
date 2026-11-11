.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 117
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1827868798
cmovo dx, si
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 5
btc rbx, rdi
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and si, dx
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
xor al, 77
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
