.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
setb sil
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
inc edx
xchg bx, bx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
xor sil, sil
sbb dl, -26
add ebx, 2
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
