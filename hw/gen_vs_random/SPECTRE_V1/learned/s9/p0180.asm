.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add al, -109
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
or di, -85
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sub cl, -21
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
sub cl, dl
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
