.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
test ebx, -2015966884
test cx, 401
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 96
xor cl, dl
or sil, al
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 9
test bl, dl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and si, dx
and dil, al
cmovns rbx, rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 30
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
cmovns edi, esi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
cmovo eax, ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
