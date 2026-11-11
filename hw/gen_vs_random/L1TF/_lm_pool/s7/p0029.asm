.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
mov al, dl
test eax, 645518295
xor al, 38
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 19
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 96
xor bl, -5
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
sub al, 9
inc eax
add cl, sil
or cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
