.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, di
xor sil, dl
btr rcx, rax
cmovnp rsi, rdx
btr bx, 100
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
bts rax, rdx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and bl, -56 # instrumentation
cmovnle esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
test rdx, 28
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and bl, -15 # instrumentation
cmovnp bx, bx
and al, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
