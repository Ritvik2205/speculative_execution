.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
or cl, dl
or dil, 12
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
or al, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
cmovnbe rcx, rcx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
bt rcx, 77
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
bt ecx, 83
xor di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
