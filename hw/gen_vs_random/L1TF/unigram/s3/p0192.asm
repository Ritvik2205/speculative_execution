.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, 8
or rbx, 18
xor dil, al
setp cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
lea ecx, qword ptr [rdx + rcx]
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
add dil, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
