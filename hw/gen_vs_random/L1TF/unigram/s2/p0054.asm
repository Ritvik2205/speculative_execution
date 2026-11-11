.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
test di, 2
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 64
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
dec dl
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
add sil, 12 # instrumentation
cmovnb eax, esi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 32
sbb sil, -79
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
lea ecx, qword ptr [rdx + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
