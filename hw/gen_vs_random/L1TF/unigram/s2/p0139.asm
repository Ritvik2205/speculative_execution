.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
bts eax, ecx
btr cx, bx
test si, si
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
add sil, -40 # instrumentation
sbb rsi, 71
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
or eax, -62
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
imul al
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
and dl, dil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
