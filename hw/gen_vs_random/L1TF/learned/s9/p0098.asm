.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdx]
setno bl
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, -70
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
xchg dil, dl
jmp .bb_0.3
.bb_0.3:
and ax, 37
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
