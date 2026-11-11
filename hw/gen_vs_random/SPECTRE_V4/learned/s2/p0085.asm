.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rsi]
cmp bl, dil
cmp eax, 512128713
add dil, 105
cmp eax, 64
adc ebx, -100
add al, -127
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and dl, 126
or eax, -863161215
xor dil, dl
adc al, bl
or dl, -26
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc al, al
adc dil, al
or cl, 66
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
or ax, 7381
xchg dx, ax
test cl, -31
or bl, 111
mov al, bl
adc bl, dl
xchg edx, ecx
and cl, -118
xor ax, 13329
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
