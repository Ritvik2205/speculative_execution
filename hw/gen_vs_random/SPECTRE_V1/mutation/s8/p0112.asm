.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, bl
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
setbe dl
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
or cl, dl
imul rcx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmp cl, al
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
setnle bl
xor rax, 376589024
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
adc bl, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
