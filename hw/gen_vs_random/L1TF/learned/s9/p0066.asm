.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
xor rdx, 122
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
test al, -82
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test cl, 95
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and dl, -49
test al, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 28
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
