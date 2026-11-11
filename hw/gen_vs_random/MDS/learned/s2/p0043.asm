.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnle ecx, esi
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
cmovnle ecx, edx
cmovs edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
xor al, 78
cmovs edi, ecx
cmovo rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
cmovs eax, edi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
