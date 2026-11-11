.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
or al, bl
and rdx, 82
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
btr ebx, eax
xor cx, -18
xor al, dl
or al, 24
and bl, 68
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
test dil, bl
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rcx
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
cmovnp rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
