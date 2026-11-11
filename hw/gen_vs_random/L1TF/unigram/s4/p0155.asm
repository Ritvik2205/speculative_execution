.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -121 # instrumentation
cmovnp edx, ebx
add al, 65 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
test di, 92
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 28
xor dx, ax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sbb al, 18
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
