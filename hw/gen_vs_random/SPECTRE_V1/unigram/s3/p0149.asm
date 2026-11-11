.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, bx
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
lea rdx, qword ptr [rsi + rdx + 21]
btr edi, 92
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
imul cl
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
add rax, -845342150
sbb rcx, 8
or cl, -62
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 62
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
