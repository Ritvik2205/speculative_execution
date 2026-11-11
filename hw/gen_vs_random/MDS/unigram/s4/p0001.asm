.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 94
not ecx
or al, dl
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
btc cx, 104
cmovnle ecx, eax
and dl, cl
and cl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
or al, al
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
xor edx, 61
and rax, -1378371328
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
or dl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
