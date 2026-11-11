.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 64
add bl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and ebx, eax
add al, 109 # instrumentation
adc bx, 23
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 60
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
add al, 39 # instrumentation
lea ax, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea ecx, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
lea ecx, qword ptr [rbx + rax]
lea eax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
sub dil, -70
add dl, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
