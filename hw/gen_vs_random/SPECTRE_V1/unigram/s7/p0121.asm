.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
add dl, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmovnle rax, rdx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
movsx esi, sil
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
lea bx, qword ptr [rax + rdi]
mov cx, -13260
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
