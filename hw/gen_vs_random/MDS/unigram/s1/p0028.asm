.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 42
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts rbx, 56
bt dx, bx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 69
or ebx, ebx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 49
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
cmovno si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
