.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 13
and bl, -120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
test dil, cl
test sil, 41
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 28
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
cmovb rsi, rax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovl ebx, ebx
xor bx, 64
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
bt rcx, 17
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
xor dil, bl
xor sil, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
