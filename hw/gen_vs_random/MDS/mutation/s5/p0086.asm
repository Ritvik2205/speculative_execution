.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -72 # instrumentation
not bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
cmovnb rax, rsi
bt ecx, edx
cmovp ebx, esi
cmovo edx, ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmovnbe rbx, rdx
xor al, bl
btr si, 208
and al, -103
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or dl, sil
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
