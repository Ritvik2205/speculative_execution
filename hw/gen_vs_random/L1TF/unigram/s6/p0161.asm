.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdx, rsi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 17
btr dx, 46
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
cmp rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 81
add sil, -40 # instrumentation
sbb rsi, 17
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmp rax, 1138518729
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
