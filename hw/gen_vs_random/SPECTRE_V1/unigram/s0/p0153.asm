.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
movsx ecx, bx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 59
cmovb rbx, rax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
bts cx, ax
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
sub cx, 43
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
