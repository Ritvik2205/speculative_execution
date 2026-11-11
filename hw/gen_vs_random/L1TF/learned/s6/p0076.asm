.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb bl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
cwde
cmp al, dl
cmp sil, -11
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor dil, dl
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
