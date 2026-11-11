.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
add cl, 36 # instrumentation
sub rax, rax
dec al
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
bts dx, 26
cmovnl esi, ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
cmovnle ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
