.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xor bx, 61
or rax, 1362710293
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or cl, -78
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 81
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
