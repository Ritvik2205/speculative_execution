.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 38
lea rdi, qword ptr [rdi + rdx + 32]
add al, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
sub dil, 95
setp al
jmp .bb_0.1
.bb_0.1:
cmovb rdi, rax
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and sil, 69
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 21
lea eax, qword ptr [rsi + rdx]
lea di, qword ptr [rcx + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
