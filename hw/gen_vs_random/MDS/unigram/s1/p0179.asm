.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
cmovb si, si
bts ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 70
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
or dx, 27
test sil, 47
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
bts rdx, rdx
cmovnl rax, rax
or dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and cl, bl
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
