.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
add dil, bl
xor rax, -224991767
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test al, 114
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
sbb dil, 13
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 50
xchg eax, ebx
mov dl, bl
test esi, -2111618709
test eax, -31785616
test eax, -31785616
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 45
test cl, dl
cmp cl, 100
mov dil, sil
add dl, dil
or rcx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
