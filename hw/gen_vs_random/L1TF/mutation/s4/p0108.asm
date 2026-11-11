.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
setb al
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xchg ebx, edi
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
test al, -104
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
