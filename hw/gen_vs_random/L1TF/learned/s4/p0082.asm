.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
bts ebx, 97
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and dl, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
