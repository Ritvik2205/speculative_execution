.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and dl, dil
and cl, -19
or sil, sil
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
or cx, -42
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or al, dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or dil, dl
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 49
test rdi, 39
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
