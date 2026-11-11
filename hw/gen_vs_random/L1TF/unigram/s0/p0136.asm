.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
dec cl
or rax, -263404965
xor bl, -116
adc eax, -1211718481
bswap rdx
jmp .bb_0.1
.bb_0.1:
xor sil, dil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 53
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
xor rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
add al, 65 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
