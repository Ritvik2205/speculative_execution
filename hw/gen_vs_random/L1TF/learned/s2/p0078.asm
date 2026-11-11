.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
cmp rax, 16650668
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
test dl, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea rdx, qword ptr [rcx + rdx + 50]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
