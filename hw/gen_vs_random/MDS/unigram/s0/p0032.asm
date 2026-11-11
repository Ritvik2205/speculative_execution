.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
cmovnbe rdi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and bl, 57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
cmovo rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 54
not cl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
test sil, -96
test dl, dl
or al, 30
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
or sil, -49
and si, ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
btr edi, eax
test ebx, -2015966884
and cl, -6
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
