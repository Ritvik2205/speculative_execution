.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
btr bx, 188
cmovs edi, esi
and bl, 68
and bl, -28 # instrumentation
cmovl rax, rbx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
bt si, ax
xor bl, -88
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
