.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor al, 115
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
bt ax, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and dl, -73
test al, -7
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and dil, sil
not bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor dl, -59
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
