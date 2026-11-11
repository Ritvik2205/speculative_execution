.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 13
sbb bl, cl
cmovnz ax, bx
add al, -62 # instrumentation
setnb al
adc edx, ebx
and al, dil
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
cmovno di, ax
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
