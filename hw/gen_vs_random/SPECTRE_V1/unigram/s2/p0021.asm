.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 90
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ebx, eax
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
or al, 7
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
cmovle rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add bl, 26 # instrumentation
sbb bl, sil
and dl, 72
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
