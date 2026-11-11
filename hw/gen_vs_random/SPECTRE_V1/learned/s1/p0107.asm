.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
add sil, 2
cmp cl, 26
mov al, cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
xchg ecx, esi
test dl, -7
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
