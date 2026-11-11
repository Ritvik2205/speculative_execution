.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
sub bl, dl
sub al, dl
test al, 84
sbb esi, 88
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
lea di, qword ptr [rbx]
sub bl, dl
xor si, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
