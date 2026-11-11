.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
lea dx, qword ptr [rdx]
or al, bl
bts rbx, 12
or al, -57
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test al, -104
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
