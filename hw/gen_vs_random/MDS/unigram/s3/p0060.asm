.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
bts eax, ebx
cmovo ecx, edx
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
or cx, si
cmovz esi, ebx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and ebx, 30
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 32
bt ecx, 44
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
cmovnbe edx, eax
or sil, -8
btc dx, 38
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
