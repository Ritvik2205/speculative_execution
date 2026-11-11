.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns esi, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 71
xor sil, 110
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovl rax, rsi
cmovno rdx, rbx
test bl, -114
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
bts di, 73
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
bt rsi, rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
