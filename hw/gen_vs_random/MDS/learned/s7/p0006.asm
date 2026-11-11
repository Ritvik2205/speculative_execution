.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 36
and dl, cl
or cl, 30
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btr dx, di
xor al, bl
or ebx, edx
and al, al
jmp .bb_0.1
.bb_0.1:
test rax, 1000448998
or al, -17
test cl, -86
or sil, -49
or dil, 12
xor cx, -18
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
