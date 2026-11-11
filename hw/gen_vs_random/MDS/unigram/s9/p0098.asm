.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
cmovbe ax, dx
or bl, sil
and dl, 91 # instrumentation
cmovnle edi, edi
or dl, sil
not cl
and bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
cmovns bx, ax
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 1
and bl, -123 # instrumentation
cmovnp si, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
test cl, -86
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
