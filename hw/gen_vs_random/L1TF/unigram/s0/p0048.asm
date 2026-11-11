.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and bl, 89
cmp dil, dil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdx
add cl, 40 # instrumentation
cmovbe di, si
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
adc dl, -12
xor ecx, 17
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 43
lea rax, qword ptr [rax + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
