.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
not cl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rax, 1994547909
bts ebx, edi
jmp .bb_0.1
.bb_0.1:
and esi, 21
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
bts ebx, 41
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
