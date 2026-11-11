.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, sil
neg rdx
imul bl
setbe cl
add dl, 99 # instrumentation
sets dl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
cmovle rdi, rsi
movsx ecx, cl
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
or cl, 97
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 79
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
