.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdx, rax
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 51
add sil, bl
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
or rdi, 23
cmovnb edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and ax, 37
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
btc cx, cx
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
btr eax, 47
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
not bl
add dl, 76 # instrumentation
sbb cx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
