.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or bl, 97
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor dil, bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
add dil, bl
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
test al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
