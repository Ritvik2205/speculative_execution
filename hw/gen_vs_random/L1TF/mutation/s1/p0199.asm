.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and al, dl
setnz cl
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or rax, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
test edi, edx
sbb cx, cx
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
