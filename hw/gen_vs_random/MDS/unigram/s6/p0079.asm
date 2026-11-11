.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
cmovbe esi, ebx
cmovnz rdi, rax
or eax, -900576213
and edx, -44
or rbx, -72
bt eax, ebx
and ecx, -104
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
cmovnbe rcx, rsi
and cl, -49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
btc di, 233
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and edx, -44
or dil, -76
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 77
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and sil, -53 # instrumentation
cmovbe ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
