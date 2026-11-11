.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
imul edi, edi, 68
and rcx, -29
dec al
lea eax, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
test bl, -8
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
sbb cl, 105
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
setb dl
dec dil
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
