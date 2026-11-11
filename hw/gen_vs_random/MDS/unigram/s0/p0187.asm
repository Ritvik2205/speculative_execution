.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and dl, -73
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
cmovno edi, eax
test bl, dil
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and al, al
cmovs eax, esi
test bl, -14
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
or dil, 16
cmovs rax, rbx
cmovnbe rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
bt rcx, rcx
cmovl ecx, edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
