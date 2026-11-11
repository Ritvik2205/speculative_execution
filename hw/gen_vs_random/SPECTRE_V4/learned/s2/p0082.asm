.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 47
add al, 40
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
cmp al, -53
add cl, sil
add dil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
adc eax, -983562873
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
