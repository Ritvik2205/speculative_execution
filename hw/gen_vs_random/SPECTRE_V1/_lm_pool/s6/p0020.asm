.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
xor sil, -33
sub al, 63
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and al, -23
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
and dil, al
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
lea cx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and al, bl
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
