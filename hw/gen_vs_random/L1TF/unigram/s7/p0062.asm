.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
add dx, 63
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
test ax, cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
add al, 80 # instrumentation
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
movsx rdx, dx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 77
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
