.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor rax, -1499464454
test al, al
bt ax, bx
and dl, 120 # instrumentation
cmovnle ax, bx
and cl, cl
or bl, cl
and ecx, -104
xor bl, -88
cmovnbe rdx, rdx
test dl, 9
cmovz edx, edx
test eax, 1287331633
test ax, 30932
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
cmovns esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
