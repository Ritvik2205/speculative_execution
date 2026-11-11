.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and dil, -22
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
xor dl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
cmp cl, dl
mul ebx
setp sil
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 16
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
lea cx, qword ptr [rax]
lea rdi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
