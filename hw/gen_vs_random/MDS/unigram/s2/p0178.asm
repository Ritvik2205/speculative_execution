.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
bt rcx, rcx
and bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
and cl, -14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
test eax, -571234566
btr rax, rdi
xor bl, -88
test rsi, 11
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
