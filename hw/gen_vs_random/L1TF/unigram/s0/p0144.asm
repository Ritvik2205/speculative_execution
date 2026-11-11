.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, bx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
cmovl dx, cx
lea edi, qword ptr [rdi]
btc dx, 73
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
btc di, 237
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
add rax, rdi
lea rdx, qword ptr [rcx + rcx]
or al, al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
