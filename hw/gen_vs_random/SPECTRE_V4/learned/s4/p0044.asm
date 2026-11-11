.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and al, -118
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and cl, 32
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
cmp sil, cl
adc sil, dl
or cl, 12
sub dl, -16
cmp ecx, 19
test al, 18
adc bl, -58
cmp rax, -1247892360
sub rax, 714283065
sbb al, -52
and bl, -30
cmp al, dil
add bl, dil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
sbb bl, 121
bt ax, si
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and sil, -84
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
or bl, cl
and cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
