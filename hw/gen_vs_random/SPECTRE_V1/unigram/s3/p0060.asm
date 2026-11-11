.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, 1
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
cmovl dx, si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
lea cx, qword ptr [rdi + rax + 54]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor edx, 51
mul cl
or bx, dx
adc cl, -18
setnbe dl
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
add dl, 118 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
