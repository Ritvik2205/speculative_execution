.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
add al, 18
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
lea cx, qword ptr [rax + rdx]
sbb bl, cl
add dil, dl
and dl, -92
sub al, bl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
