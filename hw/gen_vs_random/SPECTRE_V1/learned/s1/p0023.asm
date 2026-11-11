.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and al, sil
test al, bl
add cl, -127
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea bx, qword ptr [rdx]
cmp rax, 1189904463
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
