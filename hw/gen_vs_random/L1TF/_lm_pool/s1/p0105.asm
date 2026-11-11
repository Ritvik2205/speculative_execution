.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
adc al, bl
test eax, 899472326
jmp .bb_0.1
.bb_0.1:
test sil, al
bt esi, eax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
and ax, 7954
test eax, 899472326
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
