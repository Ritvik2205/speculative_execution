.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
cmovs ebx, ebx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmovnp ebx, edx
and sil, 21 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 70
and sil, -9
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
test di, 99
cmovnl edx, edx
cmovb bx, dx
cmovns si, dx
and dl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
