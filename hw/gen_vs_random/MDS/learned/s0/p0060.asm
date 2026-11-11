.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 84
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and al, -103
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
xor di, 93
or al, -22
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
test sil, 41
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
test sil, 17
test bl, dl
and dl, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
test al, bl
xor sil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
