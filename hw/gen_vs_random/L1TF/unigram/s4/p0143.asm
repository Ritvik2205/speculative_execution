.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 41
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
or rax, rbx
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
sub sil, dl
sub dl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 8
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 68
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
add cl, 44 # instrumentation
cmovns ax, cx
add dl, -56 # instrumentation
cmovs rsi, rcx
xor dl, al
sbb rsi, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
