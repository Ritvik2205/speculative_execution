.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test cl, -123
bt edi, 225
xor al, 122
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
bt esi, ecx
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
btr dx, bx
and rax, -2039117613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
