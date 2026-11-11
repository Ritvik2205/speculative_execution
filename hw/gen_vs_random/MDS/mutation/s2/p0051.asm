.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
btc rsi, rsi
or edx, -1
and dl, -73
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and bl, 38 # instrumentation
cmovbe ecx, ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
test sil, bl
cmovnbe ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
test al, bl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
