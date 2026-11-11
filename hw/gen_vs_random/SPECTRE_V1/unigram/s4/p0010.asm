.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx + rdx + 60]
sub sil, bl
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
lea ax, qword ptr [rax + rdx]
sub dil, dl
and al, dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rbx + rbx + 5]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
bswap edx
lea si, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 29
test cx, -17886
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
