.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, rsi
xor sil, sil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
add rsi, rax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
test dl, dil
and bl, al
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
cmp bl, 13
sub bl, sil
bts ecx, 31
cmovle rax, rsi
movzx bx, sil
or sil, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 66
or sil, 56
mov bl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 87
cmovle rbx, rax
cmovnl rbx, rax
sub ecx, edx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmovp rcx, rax
movzx rax, si
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
or sil, 40
cmovns dx, cx
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
adc sil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 30
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ecx, edx
cmp dl, 50
cmp ecx, 31
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 99
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
cmp dl, dil
mul dl
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
