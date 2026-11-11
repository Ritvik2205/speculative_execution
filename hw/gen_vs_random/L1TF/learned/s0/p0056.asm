.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, esi
xor bl, cl
or rdx, 11
xor dl, sil
lea rcx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
adc dil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
sbb bl, -88
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
