.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edi, qword ptr [rbx + rsi + 54]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 21
sub dl, cl
add cl, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and al, -54
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
