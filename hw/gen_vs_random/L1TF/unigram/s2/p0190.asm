.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 103
or bx, 16
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 73
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
xor rdi, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 16
xor al, cl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 59
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 37
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
mov ebx, eax
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
lea rcx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
