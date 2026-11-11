.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or ax, -23697
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
or dil, -41
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and bl, bl
bt eax, 37
jmp .bb_0.1
.bb_0.1:
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
bt rcx, rbx
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
cmovnle rax, rsi
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor bl, -27
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
