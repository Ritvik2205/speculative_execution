.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -122
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
or eax, 678817098
test edi, -1252846009
and bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
btc dx, 67
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor bl, dil
test rax, 1949278494
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
