.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor al, al
jmp .bb_0.1
.bb_0.1:
test dl, -37
xor dl, cl
xchg ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
