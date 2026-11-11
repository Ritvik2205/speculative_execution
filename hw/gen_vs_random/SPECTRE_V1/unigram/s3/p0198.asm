.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 73
mov al, dl
imul ax, bx, 4
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sbb cl, 105
lea rbx, qword ptr [rsi]
sbb bl, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
cmovnle rax, rbx
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
add dil, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
test al, cl
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
