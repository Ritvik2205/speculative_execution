.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or al, -75
test al, dil
bt dx, si
bt dx, bx
and dl, sil
or al, -75
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or dil, bl
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
