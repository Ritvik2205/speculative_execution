.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 75
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 18
add al, -57 # instrumentation
cmovo rax, rdx
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
mov ecx, -1856082135
cmp dl, -93
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add dl, sil
inc bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
