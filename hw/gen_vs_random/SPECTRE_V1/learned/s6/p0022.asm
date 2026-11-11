.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
add rax, -845342150
mov bl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and bl, dil
and al, dl
sbb dl, sil
xor ax, 913
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
lea rsi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
