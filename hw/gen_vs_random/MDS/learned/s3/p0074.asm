.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and al, 75
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
test al, dl
test al, cl
test al, dil
bts rsi, rdx
test eax, 1729060510
bt ax, bx
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor ax, -12492
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmovnp rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
