.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
sub eax, -911655926
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
cmovns edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
cmovb ebx, ecx
lea di, qword ptr [rax]
mov si, bx
cwd
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
xor dl, cl
jmp .bb_0.1
.bb_0.1:
inc sil
lea rdx, qword ptr [rdi + rsi]
inc edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
