.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rsi, rsi
adc bl, al
bt eax, 127
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mov al, dil
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
test ax, 18607
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and al, al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mov bl, 59
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
movsx rax, bl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
