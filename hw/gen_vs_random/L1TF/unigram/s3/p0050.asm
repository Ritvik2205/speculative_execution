.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
cwde
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 22
sbb sil, dl
lea ebx, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
not cl
cmovnp dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
cmp dil, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
