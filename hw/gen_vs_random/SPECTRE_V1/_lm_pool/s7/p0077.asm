.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
lea esi, qword ptr [rbx]
or esi, -74
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
cmp cl, 8
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
add cl, -127
sub sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
