.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
setb cl
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
lea rcx, qword ptr [rdx]
sbb cl, al
sbb al, 92
and rbx, -64
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
sbb rax, 1131444263
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
test sil, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
lea edx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
