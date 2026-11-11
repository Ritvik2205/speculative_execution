.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -23308
test al, bl
test eax, -651442446
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
adc al, -59
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
or al, al
sub bl, -89
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test cl, dl
mov bl, dil
adc dl, bl
xor al, al
movsx bx, dl
xor rbx, -99
and ax, 4
test al, -38
xor dil, al
or eax, 1470564945
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
