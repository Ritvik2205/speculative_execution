.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
sets bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 49
xor al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
xor al, sil
add dl, cl
or dl, sil
sub sil, -50
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
or sil, bl
lea rsi, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 74
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 77
or sil, 37
cmovnz edx, eax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
