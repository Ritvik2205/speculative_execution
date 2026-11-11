.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 91
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and al, dil
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
mov bl, al
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
