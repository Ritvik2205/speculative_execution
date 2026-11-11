.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
bts bx, si
bt di, cx
and al, -87 # instrumentation
cmovo ax, di
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, rdx
cmovo ebx, edi
cmovno rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovnp rax, rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovnle edi, ebx
and rax, -1701787862
or dil, -78
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
