.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
cmovl rdi, rdi
btr rcx, 79
or bx, 5
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 92
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xor rcx, 71
test dl, dl
cmovnp bx, ax
cmovs eax, eax
or cl, al
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
