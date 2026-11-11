.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
or cl, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test dl, -37
lea eax, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
add cl, 88
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
cmp al, 27
lea rcx, qword ptr [rax + rdi + 35]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
