.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edi, edi
lea di, qword ptr [rax]
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
cwd
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
adc dl, cl
cmovb ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
mov si, bx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
