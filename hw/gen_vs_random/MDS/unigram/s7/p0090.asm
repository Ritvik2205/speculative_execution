.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
cmovnp rdi, rdx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 30
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
cmovb esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
or dl, -8
jmp .bb_0.1
.bb_0.1:
and rsi, 82
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
bts rsi, 221
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 89
not esi
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
bts ax, dx
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
