.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 205
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
xor bl, dl
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and ax, 339
bt di, 52
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
cmovb rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor cx, -18
test bl, cl
xor bl, -61
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
or dl, bl
cmovz rcx, rax
not edi
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
