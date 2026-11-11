.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
or dil, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 84
xor dil, al
or al, 74
or esi, ebx
jmp .bb_0.1
.bb_0.1:
or dil, 16
xor al, -19
not dil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor si, 80
or al, -24
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test eax, 1287331633
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
