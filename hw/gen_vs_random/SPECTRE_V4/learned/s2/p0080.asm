.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
lea cx, qword ptr [rcx + rdi + 21]
or bl, 71
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
cmovnl rax, rax
cmovle cx, cx
jmp .bb_0.1
.bb_0.1:
or dil, 27
cmovnl rax, rax
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
xor al, -2
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub ax, 24441
not eax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 12
not rdi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
and dl, al
sbb cl, 19
cmp ax, -15409
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmovnbe rax, rbx
cmp ax, -15409
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
cmovnp rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 31
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
bts edi, 167
bt edi, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
test dl, 19
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
test bl, 24
cmovle rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub al, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
