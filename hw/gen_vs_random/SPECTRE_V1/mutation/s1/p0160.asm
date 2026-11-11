.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
imul esi
sub cl, cl
sbb ax, -17107
cmovno di, bx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
cmp cl, al
adc bl, 102
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rax, 29
sbb dl, 127
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
or cl, dl
setnle bl
imul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
