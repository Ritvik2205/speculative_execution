.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
cmovb ax, bx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 54
or si, -12
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 62
btc ax, bx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
bt ebx, 98
jmp .bb_0.1
.bb_0.1:
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
or dil, -71
cmovo rsi, rax
and al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
btr ebx, edx
test sil, -96
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
