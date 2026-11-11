.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 31
cmp cl, dil
and al, -54
test al, -71
cmp dl, dil
add al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
