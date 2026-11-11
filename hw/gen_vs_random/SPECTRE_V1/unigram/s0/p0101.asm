.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ebx, eax
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
cmovz edi, eax
cmovnbe rcx, rdx
sbb cl, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
cmovp rcx, rax
btr rax, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
