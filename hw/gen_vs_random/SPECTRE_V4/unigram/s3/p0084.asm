.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
add si, 4
btc edx, 45
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
dec cx
sub rdi, 61
xor rcx, rsi
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 96
add cl, dil
cmovb eax, ecx
or dx, cx
adc bl, sil
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
sub esi, edx
btc di, si
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
btc di, 20
xor al, cl
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
add sil, 110
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
movzx ecx, dil
or bl, bl
add bl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
adc si, 64
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
adc dl, sil
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
dec sil
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
dec dil
cmovnz edx, ecx
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
