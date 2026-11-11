.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 55
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rsi, rsi
test sil, al
test sil, 17
or sil, -49
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bl, dl
cmovz bx, bx
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
