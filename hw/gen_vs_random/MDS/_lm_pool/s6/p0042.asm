.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor dl, 34
and eax, 366961170
and dl, sil
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor dl, 34
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or sil, -49
jmp .bb_0.1
.bb_0.1:
xor al, 122
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rdi, 29
test rdi, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
