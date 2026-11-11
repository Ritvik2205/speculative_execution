.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovnp rdx, rdi
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 20
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
add bl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
test rax, 1732677821
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
or sil, -8
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
imul rdx, rsi
sub di, 99
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
dec dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
