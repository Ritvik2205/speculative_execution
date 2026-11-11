.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, si
xor al, dl
or cl, 7
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
or al, sil
and al, sil
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and al, al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
