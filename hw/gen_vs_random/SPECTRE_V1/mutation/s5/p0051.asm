.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
sub cl, bl
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
sub dl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul rcx
cmp cl, al
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rax, -1905683998
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dl, 127
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
adc bl, -76
setnle bl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
