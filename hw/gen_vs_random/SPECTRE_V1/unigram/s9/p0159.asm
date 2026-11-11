.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
movzx eax, bl
lea edi, qword ptr [rbx + rbx + 73]
cmp bx, 4
add dil, -75
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
bt esi, ecx
not rsi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
setns al
setbe bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
cdq
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
