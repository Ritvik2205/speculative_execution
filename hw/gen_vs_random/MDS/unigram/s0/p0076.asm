.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -43
xor rsi, -117
and bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmovnp rbx, rcx
or si, 94
or cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rsi, -117
cmovb rcx, rdi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
or al, al
cmovnp rax, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 12
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
