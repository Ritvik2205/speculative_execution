.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
cmovnz cx, si
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
btr cx, dx
bt rdi, 36
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
cmovnb esi, ecx
jmp .bb_0.1
.bb_0.1:
and dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
or cl, al
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
xor bl, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and cl, -44 # instrumentation
cmovno rsi, rax
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
