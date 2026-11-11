.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and bl, sil
mov al, cl
xchg dl, cl
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sub dil, cl
xchg al, sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
adc dl, 48
and cl, 86
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
