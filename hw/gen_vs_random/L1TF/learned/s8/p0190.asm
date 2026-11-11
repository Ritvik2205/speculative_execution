.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, -70
and al, -68
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xchg sil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
