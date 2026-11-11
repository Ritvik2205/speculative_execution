.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
jmp .bb_0.1
.bb_0.1:
cmovno rdx, rdx
and bx, 27
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test di, cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
cmovns si, cx
btr rax, 209
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
cmovl si, dx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
