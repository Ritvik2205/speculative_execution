.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmovb ax, di
mul dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 42
mul dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
jmp .bb_0.1
.bb_0.1:
test cl, bl
inc dil
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 39
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
