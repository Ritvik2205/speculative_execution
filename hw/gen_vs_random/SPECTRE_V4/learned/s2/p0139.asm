.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
test bx, -1599
dec rdx
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
sub ax, si
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 28
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 32
cmp al, 81
cmp al, 19
or si, 82
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
cmovo rcx, rcx
or edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
