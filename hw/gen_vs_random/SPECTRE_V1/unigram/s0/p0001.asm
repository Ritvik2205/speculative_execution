.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
setno sil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 33
cmovns rsi, rdx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo ebx, esi
mov cl, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
adc rbx, 17
lea ecx, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmp al, dil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
