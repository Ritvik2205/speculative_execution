.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
lea ax, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 45
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add dl, cl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
sbb al, dl
or ecx, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
