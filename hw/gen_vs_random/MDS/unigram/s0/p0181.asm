.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl esi, esi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and al, dl
and dl, 107 # instrumentation
cmovs edx, esi
cmovl edx, edx
test sil, al
cmovnp si, bx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 28
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and bl, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rsi
btc ax, 46
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 38
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 39
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
test sil, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
