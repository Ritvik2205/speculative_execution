.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
bts cx, di
cmovz di, ax
test cx, 401
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
btc edi, 230
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
xor rdx, -59
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
cmovle si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
