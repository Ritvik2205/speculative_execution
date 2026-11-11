.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 26
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
or dl, -67
xor sil, al
bt ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and dil, -82
xor dl, cl
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
