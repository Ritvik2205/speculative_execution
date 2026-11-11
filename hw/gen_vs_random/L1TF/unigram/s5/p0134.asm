.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
add al, -117 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
cwde
jmp .bb_0.1
.bb_0.1:
cmovz rcx, rax
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
sub sil, dl
xor bl, sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
neg di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
