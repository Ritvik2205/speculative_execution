.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 59
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmp rcx, -121
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmp al, bl
sub bl, al
mov al, cl
adc dil, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor ax, -22861
and rax, 37
or eax, 143573881
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
cmp al, 116
or al, -83
xor al, -40
sbb cl, -69
adc cl, dil
cmp sil, 127
mov dl, dil
dec al
adc bl, -58
cmp ebx, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
