.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
add cl, cl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
cmovb rcx, rsi
cmovs esi, ecx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], esi
bt rsi, rbx
neg dl
bt rax, 59
cmovns si, dx
and rax, 37
sub al, 127
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
dec cl
add cl, -23 # instrumentation
cmovno ecx, ebx
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
sub cl, -32
bts si, 8
or ax, 48
sub bx, 24
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test rdx, -1074289902
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 81
mov bl, dl
xor si, -73
mov bl, cl
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
add bl, 95 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
cmovnb rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
dec dil
add cl, 122 # instrumentation
cmovz cx, dx
xor rcx, -111
or esi, ebx
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
test bl, -16
cmp dl, bl
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and al, bl
neg esi
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 14
bt rsi, 242
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
