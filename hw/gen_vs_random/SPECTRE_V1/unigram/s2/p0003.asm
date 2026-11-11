.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 92
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
btr ebx, ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, bl
lea rsi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
imul ax, cx, 30
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 15
cmovno rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
