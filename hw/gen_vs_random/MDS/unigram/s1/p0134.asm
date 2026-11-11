.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
bt edi, 17
bts rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -104
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
or bl, -54
and al, 17 # instrumentation
cmovnp ecx, edx
and bl, 68
or dl, 85
or cl, 7
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
test dx, 16353
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
