.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
cmovl bx, dx
setnb dl
cmovnle di, ax
dec al
and dl, -111
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 52
test ecx, 14
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
mov al, sil
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
sub al, al
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
