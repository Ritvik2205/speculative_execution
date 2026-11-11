.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
add al, -109
mov bl, bl
lea bx, qword ptr [rcx + rdi + 11]
test al, 34
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
not bx
cmp bl, -114
movsx cx, al
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
