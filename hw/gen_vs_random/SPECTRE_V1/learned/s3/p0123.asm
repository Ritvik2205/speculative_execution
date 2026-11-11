.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edx
xchg edi, eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, -614
add al, al
xchg edx, edi
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
sbb dl, al
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
