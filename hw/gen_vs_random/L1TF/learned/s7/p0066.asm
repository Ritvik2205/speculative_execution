.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor dl, 64
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
cmovnle rcx, rax
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
bts ax, 201
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
