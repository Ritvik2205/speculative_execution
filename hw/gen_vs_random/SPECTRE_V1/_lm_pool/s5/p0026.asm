.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub sil, bl
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xor dil, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, dl
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
cmp cx, 19
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
cmp sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
