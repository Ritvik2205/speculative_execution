.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 35
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
test dl, 84
xor al, dl
jmp .bb_0.2
.bb_0.2:
setno cl
xchg bl, cl
test ax, 636
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
adc cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
