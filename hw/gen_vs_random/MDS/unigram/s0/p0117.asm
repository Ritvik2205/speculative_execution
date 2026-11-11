.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 16
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and dx, cx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
btr si, cx
btc edx, 75
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnle ax, ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and bl, sil
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
