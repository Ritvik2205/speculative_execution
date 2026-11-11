.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdx + rdx + 75]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
test sil, 29
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
lea cx, qword ptr [rsi + rcx + 91]
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
xchg sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
add al, al
xchg rdx, rax
and esi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
