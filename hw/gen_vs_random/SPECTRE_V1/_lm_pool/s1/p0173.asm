.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
cmovno ax, di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub bl, al
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, sil
xchg rdx, rbx
cmp rcx, 54
jle .bb_0.2
jmp .exit_0
.bb_0.2:
xor al, al
bts esi, 35
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
