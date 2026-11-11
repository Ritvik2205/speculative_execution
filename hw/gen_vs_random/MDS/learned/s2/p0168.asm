.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor dl, -59
xor ax, -12492
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and si, -121
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rax
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
xor al, 9
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and sil, -9
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
