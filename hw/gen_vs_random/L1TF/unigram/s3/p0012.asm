.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 12
bt eax, esi
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
lea dx, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
cmp dil, 18
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
bts eax, 232
or bl, 114
lea ax, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
