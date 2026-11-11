.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or al, -61
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
bt ecx, 60
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and edx, ebx
cmovnz cx, ax
cmovz rcx, rsi
and dl, 13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
bt rcx, 92
bt bx, 253
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
bts ecx, 3
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
