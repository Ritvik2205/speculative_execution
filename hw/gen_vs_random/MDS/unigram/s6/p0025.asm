.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
bt rbx, rbx
and cl, -71
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or sil, sil
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 28
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
btc bx, cx
xor dl, -43
test dil, 46
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and bl, 38 # instrumentation
cmovno rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
cmovnb rdx, rdx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
