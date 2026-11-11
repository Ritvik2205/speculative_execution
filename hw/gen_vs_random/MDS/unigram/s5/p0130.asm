.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and bl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
or rdx, -48
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
or dl, 85
btc rsi, 105
xor si, 80
cmovnbe ebx, ebx
test al, cl
and cl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and dl, 119 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and bl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
not di
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
