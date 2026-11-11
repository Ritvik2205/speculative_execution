.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 99
mov al, -101
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
sub rdi, 81
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
sbb di, 80
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
xor sil, bl
movzx rax, dl
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
