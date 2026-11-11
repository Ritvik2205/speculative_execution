.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
movsx cx, al
or si, 0b1000000000000000 # instrumentation
bsf si, si
add sil, 103 # instrumentation
cmovno eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and sil, cl
add bl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
lea rcx, qword ptr [rbx + rdx]
sbb sil, -78
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add al, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
