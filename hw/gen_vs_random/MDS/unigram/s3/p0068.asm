.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, 3
cmovs rax, rsi
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
or di, 52
xor dl, sil
xor sil, -14
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
cmovz esi, ebx
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
cmovnz di, dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
xor sil, bl
cmovo rax, rax
or sil, al
bt edx, 27
cmovnz ebx, edx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
