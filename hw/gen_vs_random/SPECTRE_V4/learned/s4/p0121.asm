.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
xor dl, bl
or ax, -12775
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovns ax, ax
cmovs eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
xchg eax, ebx
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 26
sub dl, al
add rdi, -94
btc di, cx
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
xor cl, -101
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
test bl, 0
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
not dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg rbx
xor ax, 28088
cmovle rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
sub dl, dl
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
test ebx, 1263899340
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
