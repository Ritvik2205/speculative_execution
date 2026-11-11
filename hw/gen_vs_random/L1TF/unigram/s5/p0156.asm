.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
cmovnle rdi, rsi
sbb bl, -88
cmp ax, -4865
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dl, -53 # instrumentation
dec dx
imul rax, rdx, 50
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
setns cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
