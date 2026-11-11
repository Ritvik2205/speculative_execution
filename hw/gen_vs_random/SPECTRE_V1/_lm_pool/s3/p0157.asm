.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
mul rcx
sub dl, -48
xchg rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or ax, 19104
add dil, -75
mov al, bl
add cl, -127
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
