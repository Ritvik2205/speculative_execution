.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
add sil, dil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
bts dx, cx
or rcx, rbx
add sil, 2
add bl, -43 # instrumentation
adc bx, 33
sub dl, sil
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rbx]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
btc dx, cx
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
