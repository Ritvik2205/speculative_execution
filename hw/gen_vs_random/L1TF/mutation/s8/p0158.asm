.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rbx, -88
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
test sil, dl
lea edx, qword ptr [rbx]
sbb cl, al
setb cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
sbb rax, 2044012157
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdx]
sbb al, -4
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
