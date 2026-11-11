.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or sil, -49
or dil, cl
and dil, -39
test dl, dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
not al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor dil, -3
xor cl, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
