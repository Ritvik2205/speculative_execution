.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or rbx, 18
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 33
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
cmovle rdx, rdi
or rcx, 64
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 39
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
