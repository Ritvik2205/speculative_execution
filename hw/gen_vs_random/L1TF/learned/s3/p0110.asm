.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
adc eax, 551972257
cmp edi, ecx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
jmp .bb_0.1
.bb_0.1:
btc dx, 20
cmp rdi, rdx
movsx rdx, dil
cmovle ebx, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and sil, 110
and al, 76
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
