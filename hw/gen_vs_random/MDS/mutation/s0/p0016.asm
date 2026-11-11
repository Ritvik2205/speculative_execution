.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and bl, 38 # instrumentation
cmovbe ecx, ebx
btc rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and dl, -73
or edx, -1
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test sil, bl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
cmovnbe ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
