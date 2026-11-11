.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sub bl, sil
sub al, cl
add cl, -127
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
lea di, qword ptr [rbx + rcx]
and dl, -92
sub dl, sil
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
