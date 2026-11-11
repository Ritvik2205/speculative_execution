.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 25
and di, 91
bt rax, 18
test ax, -31596
bt di, ax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.1
.bb_0.1:
bt edx, 19
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
btr ecx, ecx
btc ebx, 149
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmovo esi, edx
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
