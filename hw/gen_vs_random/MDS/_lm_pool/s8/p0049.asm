.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 44
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor dl, 34
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
or rcx, 54
test ebx, -961564216
or al, -61
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr rdi, 129
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or cl, 7
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or cl, 39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
