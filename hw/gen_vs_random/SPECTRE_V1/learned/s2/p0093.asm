.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
cmp ebx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
btc edi, edi
lea edi, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
add cl, -36
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp edi, edx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
adc ax, -26452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
