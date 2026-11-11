.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
add bl, -79 # instrumentation
cmovo si, di
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
sbb ax, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
add cl, -72 # instrumentation
cmovp edi, edi
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
btc ecx, ebx
imul ebx, ecx, 64
imul bl
cmovnl rax, rsi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
