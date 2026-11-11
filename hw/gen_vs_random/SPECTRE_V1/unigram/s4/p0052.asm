.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
mov di, 19
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or ecx, 64
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
neg rcx
cmp ax, 7452
lea ax, qword ptr [rcx + rcx + 15]
test bx, si
cmovno ax, ax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
