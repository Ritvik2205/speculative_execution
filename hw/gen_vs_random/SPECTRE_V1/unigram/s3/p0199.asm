.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
lea cx, qword ptr [rsi + rbx + 24]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 100
lea ax, qword ptr [rsi + rbx]
sub dil, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 17
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
