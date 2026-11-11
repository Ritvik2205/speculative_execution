.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz si, si
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 5
lea eax, qword ptr [rax + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
add bl, -42 # instrumentation
lea bx, qword ptr [rsi + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
neg rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
sbb edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and dx, 80
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
