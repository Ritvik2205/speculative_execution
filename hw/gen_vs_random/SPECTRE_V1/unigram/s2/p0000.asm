.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and dil, bl
lea si, qword ptr [rax + rdi + 7]
test sil, 97
imul dx
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
add al, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, cl
cmovo bx, ax
add rax, 977059290
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
bt rdx, rax
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
