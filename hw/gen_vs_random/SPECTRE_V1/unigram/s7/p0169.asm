.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
neg edi
xchg dl, dl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
bts si, 68
bts si, cx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, 34
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
imul rbx, rdx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 74
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
