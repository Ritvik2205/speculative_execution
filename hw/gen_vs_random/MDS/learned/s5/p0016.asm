.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
and eax, 943733866
test al, 66
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
or rdx, -48
and dl, al
xor cl, 98
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
