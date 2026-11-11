.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xchg edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
xchg al, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
cmovnp si, cx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 9
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or rsi, 77
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
