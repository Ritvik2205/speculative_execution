.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
cmovno di, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 87
or di, 0b1000000000000000 # instrumentation
bsf ax, di
test ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test sil, bl
or esi, esi
or dil, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
test al, 91
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
or dl, -97
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
