.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
sub rax, -701741274
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
or eax, 2007177863
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
cmovle rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor edi, 79
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
test bl, dl
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
sbb cl, cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test eax, 1561062795
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
dec dl
or dl, sil
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
inc rsi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
bts eax, 209
movzx ecx, sil
test eax, 1561062795
imul sil
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 84
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovp eax, edi
test eax, 1561062795
and sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
mov rcx, 4219775168754920203
cmovle rdi, rbx
sub rdx, 22
or ax, -12775
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
or eax, 1802312508
movzx edx, al
add eax, -1796699558
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
not bx
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
