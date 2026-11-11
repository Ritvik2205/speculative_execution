.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
cmovnz rcx, rax
and sil, 21 # instrumentation
cmovb cx, si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 89
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
and dl, 8 # instrumentation
cmovle bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
and bx, 74
xor dl, al
cmovb di, cx
not rax
test edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
or rcx, -17
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
cmovle rax, rdx
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
