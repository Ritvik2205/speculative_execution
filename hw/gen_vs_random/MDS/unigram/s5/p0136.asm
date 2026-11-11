.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, edi
cmovp si, dx
btc rcx, 35
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
bts rsi, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
or sil, -78
or esi, -110
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
not rsi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
