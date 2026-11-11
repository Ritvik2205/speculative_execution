.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
jmp .bb_0.1
.bb_0.1:
bts rbx, 25
test al, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test al, cl
or dl, bl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test edi, -1252846009
or al, bl
test bl, -9
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
