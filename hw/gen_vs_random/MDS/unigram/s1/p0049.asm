.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not sil
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
xor rsi, -117
cmovp eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and al, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
bts rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 41
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
cmovnp esi, eax
btc edi, 230
and rbx, 65
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
test cl, -113
and al, 67 # instrumentation
cmovl rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
btr rdx, 97
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
