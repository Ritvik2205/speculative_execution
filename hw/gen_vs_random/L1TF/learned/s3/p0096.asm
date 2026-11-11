.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 68
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 65
setno cl
sbb sil, -79
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
cmovb si, di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 10
add sil, -61
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
lea si, qword ptr [rdi + rdx + 76]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
