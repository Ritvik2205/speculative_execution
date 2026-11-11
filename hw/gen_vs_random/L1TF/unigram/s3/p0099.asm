.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 68
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
test dl, al
cbw
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
cmovns rax, rsi
add dx, 79
movzx edi, ax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
add dl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
cmp al, -119
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 84
lea edi, qword ptr [rcx + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
