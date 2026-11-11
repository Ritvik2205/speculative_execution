.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 80
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
xor al, 99
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and al, al
cmovnb esi, ebx
or al, 37
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test edx, -372470678
cmovp ecx, esi
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and bl, 107 # instrumentation
cmovbe cx, dx
xor bl, 67
and al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
