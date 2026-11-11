.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 13
xor cl, sil
mov cl, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
