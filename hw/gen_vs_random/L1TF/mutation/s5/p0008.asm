.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rax, 62
sbb al, 61
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
and rbx, -88
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
lea rcx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test sil, dl
setb cl
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb cl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
