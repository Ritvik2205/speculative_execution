.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rsi, rcx
inc sil
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
xor eax, -1721938664
imul al
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
adc rbx, 38
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, al
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
adc rbx, 46
movzx ax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
