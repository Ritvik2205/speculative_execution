.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 57
or sil, -49
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
test si, 71
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or ecx, 75
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test cx, 401
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
test rdi, 24
and dl, 57 # instrumentation
cmovnb ax, si
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and al, -55
xor dl, -59
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
