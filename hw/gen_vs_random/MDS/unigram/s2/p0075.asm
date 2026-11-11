.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
or dl, -115
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
test sil, dil
bts eax, edi
cmovle eax, ecx
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 12
jmp .bb_0.1
.bb_0.1:
cmovb bx, bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
and dl, 60 # instrumentation
cmovno ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
bt rdx, rax
cmovno ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
