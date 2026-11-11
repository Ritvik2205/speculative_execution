.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 83
btr ecx, esi
lea cx, qword ptr [rsi + rbx + 10]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add cl, -123 # instrumentation
cmovnp rax, rsi
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
sbb dil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
