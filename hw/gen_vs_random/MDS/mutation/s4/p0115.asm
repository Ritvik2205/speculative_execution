.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or rax, -1561934807
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt cx, bx
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovno rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or rax, 52
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
btc rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
