.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmp cl, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
movsx rcx, bl
btr rax, 93
lea ax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
cmovno ax, ax
cmp dil, bl
xor di, ax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
btc rax, 16
add bl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
