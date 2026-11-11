.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdx + rbx + 7590]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
lea di, qword ptr [rdi + rax]
mov edx, edi
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
mov di, bx
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
adc ax, -8436
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
not bl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
