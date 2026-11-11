.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, -88
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
setb cl
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea edx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
sbb cl, al
sbb al, 92
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
sbb rax, 803312930
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
