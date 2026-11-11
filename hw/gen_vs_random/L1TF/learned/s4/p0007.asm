.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea di, qword ptr [rsi]
inc dl
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmp dl, -56
add bl, 68
and rax, 1994547909
jmp .bb_0.2
.bb_0.2:
test al, -104
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and dl, -86
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
xor ax, 34
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
