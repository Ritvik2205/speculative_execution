.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
not bl
and dl, dl
test dil, cl
or di, 52
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
or sil, al
and al, dl
xor sil, -126
test cx, 401
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
