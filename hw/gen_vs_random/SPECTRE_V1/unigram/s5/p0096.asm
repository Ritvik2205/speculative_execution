.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add al, -27 # instrumentation
sets al
sub bl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 15
lea rcx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
add al, -76 # instrumentation
adc dil, -27
not bx
cmp rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
