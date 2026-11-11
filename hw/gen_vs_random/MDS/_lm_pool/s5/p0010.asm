.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
xor sil, -126
test al, bl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 39
xor dl, bl
or al, bl
bt cx, 22
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 91
or cl, 119
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
