.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle eax, ecx
add dl, -108 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
cdq
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, sil
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add dil, 72
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
cmovb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
