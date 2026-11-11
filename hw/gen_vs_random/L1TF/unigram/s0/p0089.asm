.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
xor bl, sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], esi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
cbw
imul bl
and rax, 1994547909
btr esi, 37
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
add al, -80
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 88
neg cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
