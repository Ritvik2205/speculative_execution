.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
imul bx, cx
lea di, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
lea di, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
