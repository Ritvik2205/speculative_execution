.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
test al, -32
imul bx, si, -58
imul sil
add dl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
mul edi
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
bts rcx, rcx
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
cmovb cx, bx
xor cl, bl
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
test al, 15
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 164
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
