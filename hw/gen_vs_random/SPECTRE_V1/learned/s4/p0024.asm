.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or cl, dl
xchg rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
add al, -13
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and cl, 86
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
