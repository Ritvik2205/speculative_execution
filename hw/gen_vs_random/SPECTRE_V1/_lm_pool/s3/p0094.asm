.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
test al, -99
lea rsi, qword ptr [rcx + rdi + 86]
and al, -54
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and sil, dl
or di, -85
sub al, bl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sbb al, 118
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
