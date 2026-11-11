.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or sil, -8
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
bt rsi, rcx
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btr di, 109
and dl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
or di, -18
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and dl, -2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
cmovo rdx, rcx
and dil, sil
cmovp ax, cx
and bl, 65
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
