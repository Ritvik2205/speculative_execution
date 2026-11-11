.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
test al, 70
test dil, 18
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
btc eax, 6
adc dl, dl
bts edx, ebx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
or cl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sbb cl, -122
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
