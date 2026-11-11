.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
or bl, bl
cmovno eax, ebx
cmp sil, 88
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and dl, 23
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
sub ax, 24441
adc eax, -1513455903
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 38
btc rdi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 42
inc edx
or dl, al
cmovns eax, ebx
and al, cl
test bl, sil
mov rsi, rbx
and sil, dl
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 39
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
