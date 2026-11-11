.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
add bl, 68
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
add bl, dl
imul al
and al, bl
xor bl, -5
add al, -102
or al, -48
sub cl, al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
