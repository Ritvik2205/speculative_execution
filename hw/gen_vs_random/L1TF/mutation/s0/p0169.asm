.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, edx
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and dl, dl
and al, dl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
sbb cx, cx
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
setnz cl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmp dl, cl
or rax, rsi
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
