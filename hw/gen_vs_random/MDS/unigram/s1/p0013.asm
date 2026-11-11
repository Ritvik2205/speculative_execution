.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
cmovbe rdx, rax
or dil, bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 18
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
and sil, -115 # instrumentation
cmovl dx, si
and si, 72
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 41
or al, -8
bts esi, edi
cmovnb rdx, rsi
bt ecx, esi
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
