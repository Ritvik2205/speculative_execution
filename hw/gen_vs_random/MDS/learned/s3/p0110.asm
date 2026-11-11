.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
mov al, 62
cmovp rcx, rbx
lea ebx, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
cmovle ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
or dl, bl
sub rax, 74
add edi, esi
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
cmovo di, dx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
xor ax, 2053
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rax, -1378371328
or rdi, rax
cmovnl ecx, esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 28
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 43
mov rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 88
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
xor cl, 122
adc cl, dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
adc dl, al
test dil, -72
lea rdi, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
