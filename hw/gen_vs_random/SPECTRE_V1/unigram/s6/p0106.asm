.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 44
btr ecx, eax
adc ecx, 96
imul cx
xchg sil, bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rdx + 44106]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
lea cx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
bswap rbx
cmovnz dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
