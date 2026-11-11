.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and al, 87
and al, dl
xor rdi, -9
and cx, -2
xor dl, -43
test dil, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 41
and eax, 461212071
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
