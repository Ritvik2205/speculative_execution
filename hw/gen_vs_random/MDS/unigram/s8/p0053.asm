.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 31
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
btr si, 52
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
cmovnle dx, ax
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
cmovnle rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovle ax, dx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
test sil, bl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
or sil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
btc dx, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
