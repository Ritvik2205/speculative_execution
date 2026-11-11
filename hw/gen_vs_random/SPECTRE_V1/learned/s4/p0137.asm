.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 70
sets cl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
cmp cl, 3
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
bts edx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
cmovb bx, ax
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
add bl, cl
lea rbx, qword ptr [rbx + rsi + 79]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor cl, -103
adc al, 41
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
