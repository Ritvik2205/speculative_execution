.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
inc rbx
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
bt dx, 71
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
add bl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
add dil, bl
sub ax, -15315
sub al, dl
mov cl, dl
add bl, -95
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
add al, 110 # instrumentation
cmovb rcx, rax
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
