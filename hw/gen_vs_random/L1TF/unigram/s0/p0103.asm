.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
inc eax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
xchg di, di
mul rdi
imul ebx, eax
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmp dil, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
setbe cl
bts cx, cx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
sbb al, dil
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
