.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rcx + 70]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
adc al, 36
add al, 31
cmovnl eax, ecx
cmovnbe bx, bx
lea di, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
cmovs eax, eax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
adc al, -90
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
not dl
xor edi, 48
or ax, 31571
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
