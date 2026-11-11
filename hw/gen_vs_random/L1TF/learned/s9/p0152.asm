.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
sbb sil, dl
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
not eax
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 9
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
test di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
