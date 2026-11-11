.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -4
sbb rax, 1131444263
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rbx, -64
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
setb cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
lea edx, qword ptr [rbx]
test sil, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
