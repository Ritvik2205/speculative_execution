.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
cmovnbe rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
test al, 127
cmovnl edi, edi
or sil, -49
and dil, 6 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edx
and bl, 120 # instrumentation
cmovnle edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
or cl, 119
xor bl, dl
test bl, -114
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and al, -83 # instrumentation
cmovnp rcx, rdi
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
