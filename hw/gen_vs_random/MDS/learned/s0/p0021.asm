.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 39
xor sil, 27
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor bl, 67
test cl, bl
test cl, 54
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
xor cl, dil
test dil, -51
xor al, cl
or sil, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 100
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
