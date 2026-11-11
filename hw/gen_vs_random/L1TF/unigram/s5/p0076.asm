.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
setl al
or sil, -44
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 54
mov ecx, -1856082135
and cl, 43
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
or cx, cx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
