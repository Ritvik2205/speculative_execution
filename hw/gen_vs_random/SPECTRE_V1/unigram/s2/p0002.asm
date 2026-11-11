.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
sbb bl, dl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
cmovz esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
setp sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
lea rdx, qword ptr [rcx]
lea rcx, qword ptr [rdx + rdx]
bt ebx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
