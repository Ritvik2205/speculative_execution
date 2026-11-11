.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and al, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
cmovnp bx, bx
and di, 99
and dl, 93 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
or edx, ecx
and bl, al
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
and al, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btr ecx, ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
xor dl, 8
btr si, 208
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
test edi, -1252846009
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
btc ebx, 149
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
