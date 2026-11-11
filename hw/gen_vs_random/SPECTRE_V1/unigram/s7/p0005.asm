.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add sil, -61 # instrumentation
seto sil
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
movzx rax, di
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
xchg bl, dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rax, -273199823
test bl, cl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test cx, -17886
imul ecx, ecx, 98
cmovnle cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
