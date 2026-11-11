.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
movsx rdx, dil
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and eax, -2116875023
or rdi, rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and ecx, 42
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and ax, -30938
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and eax, -2116875023
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 16
and rdi, 34
xor eax, 1170472196
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
or al, -48
cmp ax, 10
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
test al, bl
and sil, -94
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
test al, -59
imul eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
