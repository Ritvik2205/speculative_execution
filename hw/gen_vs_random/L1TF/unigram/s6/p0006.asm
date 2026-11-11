.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb si, cx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
lea eax, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
lea dx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
imul ax
btc dx, ax
btc edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
