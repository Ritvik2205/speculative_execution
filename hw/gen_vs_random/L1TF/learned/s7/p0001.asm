.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
cmp dl, -93
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
add cl, -36
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
