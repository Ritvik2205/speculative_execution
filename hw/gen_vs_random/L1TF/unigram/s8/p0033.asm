.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
lea edx, qword ptr [rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 15
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
cmp rbx, rbx
setp al
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
sub bl, 15
cmp sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
