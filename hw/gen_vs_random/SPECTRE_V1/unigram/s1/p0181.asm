.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, rbx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 92
add al, -53 # instrumentation
sbb al, dil
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
not esi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea di, qword ptr [rcx + rcx + 95]
test eax, edx
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
lea ebx, qword ptr [rax + rbx + 7]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
