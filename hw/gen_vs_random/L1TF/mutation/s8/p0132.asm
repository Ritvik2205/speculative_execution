.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
setnz cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and dl, dl
sbb cx, cx
or rax, rsi
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
cmp dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
test edi, edx
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
