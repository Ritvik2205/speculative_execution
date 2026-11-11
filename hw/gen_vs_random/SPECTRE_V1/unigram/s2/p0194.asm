.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 97
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
sub dl, al
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb edx, edx
imul bl
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea ax, qword ptr [rdx + rcx + 7]
add cl, -36
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
