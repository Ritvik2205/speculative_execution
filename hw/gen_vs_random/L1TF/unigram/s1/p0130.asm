.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
test dx, 31
lea rbx, qword ptr [rax + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
bswap rsi
mul sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 19
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
jmp .bb_0.1
.bb_0.1:
xor bx, dx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 85
cmovno ebx, ebx
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
cmovo cx, di
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
