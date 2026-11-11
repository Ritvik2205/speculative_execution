.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
lea ax, qword ptr [rax]
sub dl, -12
seto dl
add al, 72 # instrumentation
cmovns si, bx
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
sub sil, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add dl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
lea dx, qword ptr [rdx + rdx + 63]
cmovnp rax, rbx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
lea cx, qword ptr [rdi + rdx + 92]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
