.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
or cl, sil
or dil, al
or al, 24
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
or sil, bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
or al, 30
xor al, 9
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
