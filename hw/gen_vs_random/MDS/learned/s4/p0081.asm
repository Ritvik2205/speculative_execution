.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or cl, al
test rsi, 879594088
or ax, -17790
cmovl rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and al, dl
jmp .bb_0.1
.bb_0.1:
btc cx, 104
cmovnl ebx, ecx
nop
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 13
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
cmovnl rax, rax
and al, 93
cmovns eax, eax
cmovnz edx, esi
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
