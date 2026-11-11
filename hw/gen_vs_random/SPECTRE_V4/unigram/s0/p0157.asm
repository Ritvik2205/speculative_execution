.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
cmovnb edx, ecx
adc rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
sbb al, bl
add dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
movsx si, cl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 24
sub sil, sil
cmovnbe edx, edi
sub bl, dil
xor dl, dil
adc rdx, rax
cmovnz rdx, rax
add dil, al
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
neg rax
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and dl, sil
btc eax, 62
test dil, 64
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
sbb dil, al
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
neg rax
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
cmovnz rax, rdi
or rax, rcx
sbb rbx, 20
add dl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and di, -65
sbb rax, 59
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 70
cmovnl rax, rdi
neg si
adc esi, ebx
movsx si, dl
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 99
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
