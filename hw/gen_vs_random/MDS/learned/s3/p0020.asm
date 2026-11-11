.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
or bl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 498847670
xor bl, dil
or al, al
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test eax, -1634766116
and ax, 19224
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
