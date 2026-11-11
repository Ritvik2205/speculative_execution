.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 61
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
mov bx, 66
sub edx, 37
lea dx, qword ptr [rbx + rcx + 38]
cmovb eax, ebx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
xor rcx, rcx
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
