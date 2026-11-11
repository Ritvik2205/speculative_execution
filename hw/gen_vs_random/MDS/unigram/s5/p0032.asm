.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
cmovnle esi, edi
and esi, 58
bt rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and ecx, -104
test rdx, rdx
or di, 90
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
btc ax, 31
or ax, -4210
bt dx, si
cmovnz rbx, rdi
cmovle cx, ax
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
test bl, bl
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
cmovnl di, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
