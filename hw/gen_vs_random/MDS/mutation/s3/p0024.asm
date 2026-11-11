.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
btc rsi, rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
or edx, -78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and bl, 38 # instrumentation
cmovbe ecx, ebx
and dl, -73
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
cmovnbe ecx, esi
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
test sil, bl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
