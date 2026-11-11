.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
or rbx, -72
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
cmovo ebx, esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
and cl, dil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
bt bx, dx
jmp .bb_0.1
.bb_0.1:
cmovnbe rsi, rsi
cmovns edi, eax
xor dx, 71
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 29
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
xor al, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
or dl, sil
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
and bl, 121 # instrumentation
bt rcx, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
