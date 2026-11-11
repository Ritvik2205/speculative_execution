.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
not sil
and edx, -44
or al, -58
test sil, dil
and ax, 27170
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and sil, 89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test al, 91
or cl, -77
xor dil, 81
or al, dil
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
