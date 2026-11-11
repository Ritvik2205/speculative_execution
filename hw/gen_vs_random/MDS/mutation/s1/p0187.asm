.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ebx, esi
cmovo edx, ecx
bt ecx, edx
cmovnb rax, rsi
and dl, -72 # instrumentation
not bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
jmp .bb_0.1
.bb_0.1:
btr si, 52
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
or dl, sil
or bl, al
cmovnbe rbx, rdx
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and al, 49
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
