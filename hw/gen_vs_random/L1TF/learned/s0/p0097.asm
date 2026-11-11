.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
add ax, 53
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
xor edi, 48
jmp .bb_0.1
.bb_0.1:
mov rdi, -5671708760962025403
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
cmovp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
xor eax, -117
lea edi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
