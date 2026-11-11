.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 39 # instrumentation
lea bx, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
imul bl
btr ebx, 22
cmovnp si, di
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
sub sil, -99
jmp .bb_0.1
.bb_0.1:
test rsi, rdx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
sbb dil, 44
cmp dl, dl
test rdi, 39
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
test bl, dil
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
