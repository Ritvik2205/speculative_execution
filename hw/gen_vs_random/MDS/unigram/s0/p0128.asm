.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 57
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or sil, al
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and bl, 38 # instrumentation
cmovno rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
xor sil, sil
and al, 75
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
bt ax, si
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
test al, 127
cmovl ax, si
and sil, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
btc dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
