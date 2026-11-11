.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rax
and rdi, 98
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
imul bl
add sil, -42 # instrumentation
lea edi, qword ptr [rsi]
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
or eax, -1827868798
cmovo dx, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
bt ecx, 72
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
xor si, 62
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
