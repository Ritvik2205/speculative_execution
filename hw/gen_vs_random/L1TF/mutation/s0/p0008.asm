.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwd
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
lea di, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
cmovns edi, edi
sub eax, 132782095
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
adc dl, cl
xor dl, cl
mov si, bx
cmovb ebx, ecx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
