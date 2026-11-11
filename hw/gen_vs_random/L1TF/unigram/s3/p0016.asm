.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs di, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
setle dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
add bl, 107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 30
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
add bl, 89 # instrumentation
sbb dl, dil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 81
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
sbb esi, 89
and rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 14
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
