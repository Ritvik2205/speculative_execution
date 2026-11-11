.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 10
xor rdx, 122
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
sbb bl, al
cmp sil, dl
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
sbb sil, 19
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
