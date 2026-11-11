.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
xor al, bl
test bl, 65
test al, cl
test sil, cl
jmp .bb_0.1
.bb_0.1:
test sil, -96
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test cl, -86
and dx, 60
or al, -58
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and dil, -39
and dil, -62
or rax, -1561934807
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
