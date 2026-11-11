.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
or cl, 39
test eax, 298249463
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
bts rcx, 71
or al, -75
xor al, -26
or al, -61
or dl, -21
or ax, -7150
and rbx, 65
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
