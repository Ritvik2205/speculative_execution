.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
test al, -56
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rax]
or bx, 90
cmovbe edx, edi
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
