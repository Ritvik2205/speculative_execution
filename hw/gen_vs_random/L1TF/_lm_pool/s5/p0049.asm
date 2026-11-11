.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
cmovb bx, ax
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, sil
and dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or dil, -113
and cl, cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
sub al, -97
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
