.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
or al, -78
or sil, -78
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or al, 54
or al, cl
test bl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and dil, bl
test cl, dl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or bl, dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
