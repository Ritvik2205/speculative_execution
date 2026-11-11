.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea rcx, qword ptr [rdx]
sbb rax, 1131444263
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
setb cl
test sil, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, -88
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sbb cl, al
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
