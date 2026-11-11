.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
or cl, al
btc bx, 58
and cl, bl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
xor dl, -19
xor bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor ax, -4010
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor cl, -13
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
