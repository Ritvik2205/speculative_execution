.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
cmp eax, -240917296
test al, 84
lea rbx, qword ptr [rdi]
sub al, -1
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
cmovle rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
sub sil, -18
add sil, al
lea cx, qword ptr [rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
