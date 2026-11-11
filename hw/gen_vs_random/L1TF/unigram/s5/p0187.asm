.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
test al, bl
cmovb ax, dx
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovo cx, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
add cl, -36
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
xchg al, al
add cl, 55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
cmp rdx, 46
movzx edx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
