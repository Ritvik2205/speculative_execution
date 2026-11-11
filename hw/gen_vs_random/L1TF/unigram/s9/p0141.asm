.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 21
setb sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
jmp .bb_0.1
.bb_0.1:
cmp cx, 83
sbb rdx, 98
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
