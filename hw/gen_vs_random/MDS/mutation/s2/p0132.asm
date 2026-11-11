.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
btc rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and bl, 38 # instrumentation
cmovbe ecx, ebx
or edx, -78
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
test al, bl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
cmovnbe ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
