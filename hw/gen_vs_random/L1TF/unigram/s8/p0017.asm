.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
movzx dx, dl
test dil, sil
cmp edi, eax
xor al, dl
test rax, rcx
lea edi, qword ptr [rdx + rax + 14]
cmp si, 40
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
add cl, -41 # instrumentation
adc si, bx
sets dl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
sub rdx, 20
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
