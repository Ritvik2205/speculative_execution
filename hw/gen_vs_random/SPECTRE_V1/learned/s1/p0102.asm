.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 52
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test dl, -105
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
test al, 84
cmp cx, 88
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
