.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, sil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 67
add cl, -93 # instrumentation
not rdx
cmovno cx, si
and bl, cl
test rax, -1638758413
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], eax
cmp cl, 72
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
lea di, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
