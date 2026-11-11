.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
movsx rcx, cx
add dl, 68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
mov cl, dl
jmp .bb_0.1
.bb_0.1:
mov ecx, eax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
test rcx, 62
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], dx
and bl, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
