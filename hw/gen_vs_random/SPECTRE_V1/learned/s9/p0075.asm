.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test al, 42
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, sil
sub bl, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
xor al, -42
lea rbx, qword ptr [rcx + rax + 37]
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
