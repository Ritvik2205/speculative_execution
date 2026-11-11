.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
mov dil, 51
setnle al
lea si, qword ptr [rcx + rdi]
and dx, 62
and al, -23
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, dil
imul eax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
bts ax, 90
sub sil, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
