.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
lea rax, qword ptr [rdx]
bt rax, rsi
test bx, bx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and dl, dil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
cmovle edi, eax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
