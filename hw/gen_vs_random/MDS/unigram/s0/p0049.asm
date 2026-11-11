.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and esi, 99
test edi, eax
not al
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 67
bts bx, 3
and al, -83 # instrumentation
cmovnp rax, rdx
xor al, dl
or al, al
bts ax, 22
bt dx, bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 38
btr si, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
test edx, -372470678
btc rcx, 47
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
