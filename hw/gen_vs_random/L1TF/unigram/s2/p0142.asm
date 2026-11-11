.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 81
btr esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
cmp al, sil
xchg esi, ebx
sbb di, 30
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 26
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
btc rsi, rcx
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
add al, -49 # instrumentation
setnb dl
add al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
