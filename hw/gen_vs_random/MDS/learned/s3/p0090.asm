.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
xor sil, -126
and dil, -62
or ax, -6817
xor rax, -345061362
test dil, 46
test bl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
jmp .bb_0.2
.bb_0.2:
test al, 66
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
