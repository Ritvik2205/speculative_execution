.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
add al, 18
sub sil, -18
sbb dil, dl
xchg bl, cl
test cl, -24
test al, 34
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
adc cl, -19
add bl, dil
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
