.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
movzx si, cl
and dl, 126
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
adc dil, cl
sub cl, al
or dil, bl
or dl, -26
add al, -6
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
lea ecx, qword ptr [rbx]
sub cl, -119
add dil, dl
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
xor dl, dil
add al, -1
and dil, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
