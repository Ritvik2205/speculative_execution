.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 58
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 43
or sil, dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
cmovb cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
