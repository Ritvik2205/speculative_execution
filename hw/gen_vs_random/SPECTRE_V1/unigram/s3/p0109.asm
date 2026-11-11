.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
add dil, dl
cmp edx, 60
add sil, 56 # instrumentation
cmovns ebx, esi
xor rdx, 59
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 57
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 65
lea rsi, qword ptr [rax + rax + 79]
add al, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
test dl, al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
