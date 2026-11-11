.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and al, -23
lea si, qword ptr [rcx]
mov bl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rbx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
bswap eax
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
cmp cl, 38
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
