.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -78
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and bl, 38 # instrumentation
cmovbe ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and dl, -73
btc rsi, rsi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnbe ecx, esi
test sil, bl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
