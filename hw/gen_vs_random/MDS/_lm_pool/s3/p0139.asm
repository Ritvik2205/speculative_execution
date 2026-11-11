.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test dl, -85
or al, 25
or al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and cx, -8
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
xor dl, sil
xor dl, cl
xor al, 34
or al, 25
and rax, 627810357
or cl, bl
cmovb cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
