.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
lea di, qword ptr [rax]
cmovb ebx, ecx
cmovns edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
adc dl, cl
cwd
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
sub eax, -911655926
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
mov si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
