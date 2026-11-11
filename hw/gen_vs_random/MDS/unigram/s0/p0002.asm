.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
bts ebx, edi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
or ecx, 54
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
cmovs edi, ebx
bts ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and dl, -7
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
or dl, -115
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 40
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
