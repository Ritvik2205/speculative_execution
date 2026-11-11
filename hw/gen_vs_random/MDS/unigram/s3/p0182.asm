.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rax, rcx
xor bl, -27
bt si, 23
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
test al, 66
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 64
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rax, rax
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
cmovb bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
