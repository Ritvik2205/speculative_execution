.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 149
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1642752131
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and bx, dx
test dl, 25
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or ax, 6575
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
bts eax, 103
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
bt esi, 37
cmovnb di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
