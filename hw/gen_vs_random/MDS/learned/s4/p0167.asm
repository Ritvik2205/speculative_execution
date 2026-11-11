.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and cl, 40
and al, 93
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
sub esi, eax
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 55
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
btc cx, 104
and sil, -94
cmovs edi, edx
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
or dx, 10
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
