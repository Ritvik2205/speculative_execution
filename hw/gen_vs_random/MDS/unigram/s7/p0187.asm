.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and al, 2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
bts edx, 189
and dl, -73
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
bts rsi, rax
cmovp esi, esi
bt rcx, rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
not al
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 77
bts eax, 222
and esi, 73
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
