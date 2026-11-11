.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
not bl
or bl, sil
and al, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
jmp .bb_0.2
.bb_0.2:
and al, al
or dl, -8
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdx, 13
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and si, -121
and rax, 1250429750
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
