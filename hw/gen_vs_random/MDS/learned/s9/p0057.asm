.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
or sil, -78
test cl, 54
test sil, al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
cmovle di, si
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
xor bl, 67
and rax, 4
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
bt ax, si
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
