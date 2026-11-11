.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdx, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
cmovo rdx, rsi
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovnbe rcx, rcx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and cl, 118 # instrumentation
cmovp esi, eax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
test sil, al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
cmovp ax, cx
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and bl, 120 # instrumentation
cmovnle edi, edi
bt cx, 22
and dl, 84 # instrumentation
cmovle dx, bx
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
