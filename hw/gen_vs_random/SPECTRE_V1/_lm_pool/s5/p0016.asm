.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
mov dl, bl
lea rax, qword ptr [rdx]
test cl, -120
xor eax, -105
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
xor bl, sil
cmp al, cl
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
