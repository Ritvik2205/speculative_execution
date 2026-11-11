.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ax, di
or dl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovb rax, rsi
and bl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
test dx, 16353
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
or rbx, -72
or rax, 1020005579
or al, dil
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
cmovz ax, si
cmovl rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
