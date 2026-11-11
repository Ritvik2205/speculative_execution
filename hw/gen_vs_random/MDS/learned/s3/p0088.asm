.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 57
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
or sil, -78
xor dl, bl
xor ebx, 13
xor rbx, 89
test sil, dil
xor dl, -43
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
or al, bl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 33
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
