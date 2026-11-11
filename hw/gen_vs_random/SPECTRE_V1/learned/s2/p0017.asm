.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
or eax, -1161451853
adc cl, -81
xor sil, -33
sub dl, al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 66
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
