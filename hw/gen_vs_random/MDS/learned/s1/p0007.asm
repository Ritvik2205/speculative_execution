.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor al, al
bt si, si
cmovp cx, si
and dl, -7
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
cmovl rcx, rsi
and cl, -101
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
bts eax, edx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
cmovno dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
