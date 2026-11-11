.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, 1802312508
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
cmovnle si, cx
test eax, 1561062795
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or dl, 88
sub sil, -36
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdi
and rax, 21
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test al, dil
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
and bl, dl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnz eax, ebx
test rcx, -2118888343
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
or ebx, esi
and al, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
cmovle rdi, rsi
sub rdx, 22
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
bts edx, edx
xor ax, 25554
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
