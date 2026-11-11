.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 52
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
bt dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
cmovs ecx, ebx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 48
cmp al, dil
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
test sil, bl
test al, 80
xor al, -2
or al, 95
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add rdi, 105
adc eax, -1513455903
bt ebx, edi
sub bl, bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
add bl, -18 # instrumentation
mov rcx, rdx
cmp dil, dl
add dil, 82
not rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
xor dl, dil
test bl, 24
cmovnbe rbx, rdi
bt esi, 227
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
