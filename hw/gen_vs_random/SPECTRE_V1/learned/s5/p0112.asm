.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xchg edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
