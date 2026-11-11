.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 66
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
btr bx, ax
and al, 39 # instrumentation
cmovbe ax, dx
cmovno rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovp rbx, rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt rbx, rdi
btc edi, esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovb di, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or dl, -21
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
cmovno rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
