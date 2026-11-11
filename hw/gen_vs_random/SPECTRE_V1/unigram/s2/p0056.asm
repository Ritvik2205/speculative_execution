.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, dil
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 14
btc ecx, 81
sub si, 32
and rcx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rcx]
xor sil, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
add dl, 117 # instrumentation
sbb rdx, rcx
xor sil, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
test sil, 47
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
or cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
