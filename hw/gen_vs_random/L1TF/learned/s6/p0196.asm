.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 68
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 48
and ax, 7954
not sil
lea edi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
