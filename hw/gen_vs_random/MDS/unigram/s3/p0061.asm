.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
bts dx, 167
bts rax, 149
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
bts si, di
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
or bl, bl
not eax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and cx, 69
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
cmovnb ecx, ecx
and sil, dil
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
bt edi, edi
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
