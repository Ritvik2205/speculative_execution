.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
adc dl, cl
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
sub eax, 132782095
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
cmovb ebx, ecx
mov si, bx
cwd
cmovns edi, edi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
