.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
cwd
cmovb ebx, ecx
mov si, bx
lea di, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovns edi, edi
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
sub eax, 132782095
adc dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
