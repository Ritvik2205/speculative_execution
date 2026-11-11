.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and bl, 125
sub sil, -87
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
sbb bl, -94
setp al
lea dx, qword ptr [rdi + rbx + 46]
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
mov bl, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
