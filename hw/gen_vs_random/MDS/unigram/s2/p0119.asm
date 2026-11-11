.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 85
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
xor cl, 122
bt edi, 254
btc di, 44
cmovnbe bx, cx
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
btr rsi, 73
cmovnz rdx, rdi
and al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 66
cmovns ebx, esi
and sil, 65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
