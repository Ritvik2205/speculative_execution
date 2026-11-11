.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, -64
sbb rax, 62
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
test sil, dl
lea edx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sbb al, -4
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
