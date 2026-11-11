.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and dl, -72 # instrumentation
not bl
bt ecx, edx
cmovo edx, ecx
cmovnb rax, rsi
cmovp ebx, esi
jmp .bb_0.1
.bb_0.1:
or dl, sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor al, bl
cmovnbe rbx, rdx
or bl, al
and al, 84
btr si, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
