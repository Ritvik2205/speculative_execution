.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 14
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, sil
and ax, 26813
or al, -57
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test rbx, rcx
or ax, -18131
or al, -57
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
