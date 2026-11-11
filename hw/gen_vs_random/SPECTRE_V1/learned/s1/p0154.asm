.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
adc eax, 52
cmovno dx, dx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rcx, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
cmp cl, bl
sbb cl, -122
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
xor rsi, -124
not cl
cmovno eax, edi
xor cx, 71
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmovno edi, eax
xor rsi, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
