.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, dx
and cl, -19
not rax
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and sil, -13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and dx, ax
cmovns rbx, rax
cmovno rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or cl, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
cmovns rdi, rbx
cmovnb ax, cx
or dl, -31
btr cx, dx
not esi
and sil, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
