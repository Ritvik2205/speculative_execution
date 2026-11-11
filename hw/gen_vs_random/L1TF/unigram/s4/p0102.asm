.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, rdi
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
add rdx, rax
xor ecx, esi
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
mov dl, 17
setz al
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
sbb sil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
sbb sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
bswap rcx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 22
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and eax, 1167476476
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
