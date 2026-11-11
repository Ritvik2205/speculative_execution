.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
bt ax, 171
and si, 48
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 78
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and cl, dl
or cl, al
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and bl, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 81
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
or rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
