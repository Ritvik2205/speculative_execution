.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 99
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnb ecx, ebx
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
mul al
setl cl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
add di, 80
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
