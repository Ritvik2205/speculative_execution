.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
bts rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rsi, 32
cmovnb rax, rsi
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and bx, si
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edx
and rax, -978188247
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
and al, 17 # instrumentation
cmovnp edi, ecx
xor ax, -23364
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and al, -55
cmovnl ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
xor bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
