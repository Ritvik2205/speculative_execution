.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 89
bt esi, esi
xor edi, -47
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
bts cx, 32
and bl, 102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and sil, dl
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 93
and bl, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
btc cx, 104
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
