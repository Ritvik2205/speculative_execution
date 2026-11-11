.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
cmp rcx, 44
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
xor eax, 55
xchg rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 64
add cl, dl
lea ax, qword ptr [rax + rbx]
imul rax, rdx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
