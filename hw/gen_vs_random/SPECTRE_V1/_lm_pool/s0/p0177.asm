.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
lea cx, qword ptr [rax]
and dil, 98
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 11
inc cl
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
test bl, -8
xchg dl, bl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmp sil, 25
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
