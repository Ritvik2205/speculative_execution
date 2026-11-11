.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovs rdi, rdi
btr bx, 144
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 30
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe edx, esi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
setns al
add al, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 78
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
mov ax, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
