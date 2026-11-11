.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test di, 72
or al, -5
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
not bl
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 4
or ax, 11821
adc sil, 25
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
