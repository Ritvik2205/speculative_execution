.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
imul sil
test al, -70
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
bts rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
mul edi
imul bx, si, -58
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
cmovb cx, bx
xor cl, bl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
add dl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
