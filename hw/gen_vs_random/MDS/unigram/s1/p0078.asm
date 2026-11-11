.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
xor eax, 73
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 95
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
or sil, -8
xor cl, dil
and eax, -2116875023
btr dx, 91
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
or cx, 10
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovz ax, dx
xor bl, dl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
cmovnbe dx, si
or dil, dl
or rdi, 67
and eax, -872608366
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
