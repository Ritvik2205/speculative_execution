.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
or dil, al
or si, -12
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and bl, -74 # instrumentation
cmovns esi, eax
test rsi, 99
jmp .bb_0.1
.bb_0.1:
and rdi, 9
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
bt ebx, 56
cmovnb rsi, rsi
test di, dx
and dl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt edx, 72
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
