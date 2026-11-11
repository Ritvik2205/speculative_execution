.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -68
xor ecx, 24
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovbe eax, ebx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor al, dl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc edx, ebx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 35
add al, 24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
or si, 14
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
or sil, sil
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
