.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edx, eax
cmovo di, di
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
or rdx, -109
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
cmovl edx, edi
or edi, -88
and rdx, 13
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
test ecx, -1843375753
cmovz rbx, rcx
xor sil, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
btr edi, eax
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
