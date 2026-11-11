.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
not dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
add al, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
