.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or sil, bl
not bl
test sil, -55
test cx, 401
or al, 30
xor al, -26
test rbx, 2
test cl, 91
or sil, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and dil, -62
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or al, cl
or al, 30
or sil, dl
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
