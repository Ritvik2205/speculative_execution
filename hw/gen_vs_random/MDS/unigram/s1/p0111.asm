.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
bt rsi, rsi
cmovz dx, cx
cmovnle ecx, ebx
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and dil, 16
or edx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
not bl
cmovns rbx, rsi
bts edi, 36
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
