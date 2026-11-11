.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovo dx, dx
bt esi, esi
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and bl, -104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and cl, -3 # instrumentation
cmovnb cx, di
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 8
test sil, dil
cmovnle esi, edx
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edx
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 15
test dil, -72
bts esi, ebx
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and dl, -73 # instrumentation
cmovns rax, rsi
and dil, 87
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
cmovs esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
