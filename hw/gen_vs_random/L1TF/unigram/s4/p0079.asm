.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
dec dx
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 1
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
cmovnz eax, edx
add cx, cx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
mov dl, dil
cmovnz edi, eax
sbb dx, 45
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
