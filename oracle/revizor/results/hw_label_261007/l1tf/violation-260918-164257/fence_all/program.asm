.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
imul rax, qword ptr [r14 + rdx], 115 
lfence
sub eax, 132782095 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or bl, byte ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rsi], 3 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rsi], al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdx], 771970974 
lfence
adc dl, cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rcx], esi 
lfence
cmovns edi, edi 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock add dword ptr [r14 + rbx], ecx 
lfence
cmovb ebx, ecx 
lfence
lea di, qword ptr [rax] 
lfence
mov si, bx 
lfence
cwd  
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx ax, byte ptr [r14 + rax] 
lfence
xor dl, cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
