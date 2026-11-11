.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
and rcx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rdi, 77
test al, 66
or bl, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and bl, 68
bts ecx, eax
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 52
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
cmovbe ecx, edx
jmp .bb_0.1
.bb_0.1:
and al, -68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and dl, -72 # instrumentation
not bl
cmovz edi, ecx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
