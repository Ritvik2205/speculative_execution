.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
cmovz si, cx
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
bts ax, 22
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
xor eax, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 11
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
test cl, -123
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 40
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and cl, 49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
