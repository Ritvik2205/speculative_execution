.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
bts rdx, rcx
and ax, 27170
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and cl, bl
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
xor ax, -5889
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
test cl, 54
or dil, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
