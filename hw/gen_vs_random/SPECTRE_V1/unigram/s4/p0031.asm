.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
test dil, -116
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
sub ax, -17837
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
test al, 84
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 42
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
nop
add di, 44
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test dil, -116
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
mov cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
