.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btr dx, dx
and al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
bt ecx, edi
or dl, -97
or rdi, 21
xor eax, -127
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
btc eax, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
