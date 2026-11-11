.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
xor di, 40
test rdi, 72
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
xor rax, -404206377
and rcx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rcx]
and dil, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
btc rbx, 102
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
xor edx, 94
bts edx, 189
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
xor sil, al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or ax, 16560
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
