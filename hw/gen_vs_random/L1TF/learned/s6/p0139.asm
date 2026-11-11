.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb al, 92
xor rax, -2072052278
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test cl, 81
cmovb ax, di
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
cmp di, -78
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and bl, 89
sub si, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
