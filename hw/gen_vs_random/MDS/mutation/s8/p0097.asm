.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ebx, esi
bt ecx, edx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
cmovnb rax, rsi
cmovo edx, ecx
and dl, -72 # instrumentation
not bl
jmp .bb_0.1
.bb_0.1:
and al, -8
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
xor al, bl
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
btr si, 208
cmovnbe rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
or bl, al
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
