.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and sil, -84
and bl, -60
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
dec bl
or dl, -26
or cl, bl
sub bl, -98
cmp ecx, 39
or dil, dl
or cl, 12
add dl, dl
or cx, 23
cmp bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
