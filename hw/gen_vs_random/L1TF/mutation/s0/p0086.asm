.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
sub eax, 132782095
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
cmovns edi, edi
xor dl, cl
mov si, bx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovb ebx, ecx
lea di, qword ptr [rax]
cwd
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
