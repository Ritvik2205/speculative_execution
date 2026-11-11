.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
sub al, -97
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 92
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
xchg dil, al
jmp .bb_0.2
.bb_0.2:
xor di, 94
and dl, sil
sbb bl, al
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
