.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test di, 98
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
cmovnbe edi, edx
and rdi, -2
adc bl, cl
add cl, -103 # instrumentation
cmovnl rsi, rbx
btc bx, si
sbb dl, sil
dec cx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 68
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
sub bl, cl
test al, 80
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor bx, ax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
or ax, -15282
bswap rdx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 71
bt cx, 111
sub bl, bl
adc dl, dl
jmp .bb_0.1
.bb_0.1:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
xchg esi, edi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
add dl, -99 # instrumentation
not eax
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 45
lea ecx, qword ptr [rax + rsi]
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
lea di, qword ptr [rcx + rbx + 96]
cmovs di, di
sub rdx, 22
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
sbb cl, -104
sbb eax, 1081973675
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
