.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor rdx, 71
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
or cl, 97
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
cmp dl, sil
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
sub al, 10
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
test dil, -107
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and al, dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
