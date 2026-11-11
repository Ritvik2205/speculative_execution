.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
and dl, 8 # instrumentation
cmovle ax, bx
or cl, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
bts edx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and dl, 97 # instrumentation
cmovnp dx, si
and cl, 78 # instrumentation
cmovs bx, si
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or edx, -78
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
cmovz rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and cl, -76 # instrumentation
cmovl dx, ax
bts ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
or sil, al
btr ax, bx
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
