.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
not bl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
btr ecx, eax
test di, 58
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
cmovnle rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 93
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
