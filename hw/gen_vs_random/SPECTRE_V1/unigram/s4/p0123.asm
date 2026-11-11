.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
xchg al, dil
xchg cl, al
inc ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
lea edi, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 39
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
movzx edx, cx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
