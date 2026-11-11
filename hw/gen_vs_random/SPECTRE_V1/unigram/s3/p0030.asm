.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
test rdx, 1657596343
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
lea bx, qword ptr [rdx + rsi]
cmp dil, -78
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
mul cx
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovle rsi, rcx
lea ecx, qword ptr [rbx + rbx]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
