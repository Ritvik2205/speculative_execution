.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 63
test al, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
sub sil, -99
not dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
or al, cl
sub sil, -99
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
