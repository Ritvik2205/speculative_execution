.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 50
cmp edi, 30
add al, 56
add dil, 88
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
lea rbx, qword ptr [rdx + rcx + 83]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
