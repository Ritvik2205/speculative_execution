.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 124
xor rbx, rcx
adc ax, 15251
movsx eax, bl
xor dil, dil
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
adc cl, -85
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
not rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
or si, 0b1000000000000000 # instrumentation
bsr si, si
sub al, bl
bt di, si
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 12
sub rbx, 101
sub bl, dl
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
add rdi, 111
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 100
mul rdx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
cmp di, cx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and al, -28
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
sub rbx, 101
sbb dl, 75
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and cl, -128
or ax, -13633
cmovnz rbx, rsi
add ecx, 99
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
