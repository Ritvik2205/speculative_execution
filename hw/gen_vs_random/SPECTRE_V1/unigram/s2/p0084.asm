.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdx, dil
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
cmovl eax, esi
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea rax, qword ptr [rdx + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdi
cbw
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 84
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
or cx, bx
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
