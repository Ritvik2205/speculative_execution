.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
test bl, sil
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
cmovl eax, eax
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 13
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 97
and al, 82
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
test dil, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
or al, -78
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
