.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
xor cl, cl
test sil, 1
and dl, -53
and al, 59
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
adc cl, -85
or dl, -26
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 9
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
cmp cl, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
