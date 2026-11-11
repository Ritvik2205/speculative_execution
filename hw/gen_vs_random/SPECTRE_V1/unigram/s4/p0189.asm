.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add ax, 8031
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
btr si, di
adc rdx, 1
xchg bl, cl
test bl, -8
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
xor rbx, rax
cmovno rcx, rdx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
