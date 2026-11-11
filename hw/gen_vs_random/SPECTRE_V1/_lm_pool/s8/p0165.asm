.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
lea esi, qword ptr [rax]
mov dl, cl
sbb bl, sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 62
sbb sil, -78
inc al
sbb bl, 79
or eax, -126
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
