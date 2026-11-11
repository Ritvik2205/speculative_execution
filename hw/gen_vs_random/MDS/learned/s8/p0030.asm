.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor dx, 12
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
test cl, 62
bts bx, 3
xor sil, 27
and dl, -73
and dil, al
xor sil, 110
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
bt di, dx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
test rax, 1000448998
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
