.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 49
cmovb si, ax
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor dl, 19
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
