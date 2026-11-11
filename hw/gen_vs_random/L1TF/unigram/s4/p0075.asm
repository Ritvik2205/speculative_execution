.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
lea rdx, qword ptr [rax + rdx + 31]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
sub ax, 26007
test cl, 100
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
sub al, 9
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
